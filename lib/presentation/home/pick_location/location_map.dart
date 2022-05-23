import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/presentation/home/pick_location/widgets/user_location_indicator.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

class LocationMap extends ConsumerStatefulWidget {
  const LocationMap({
    Key? key,
    required this.lat,
    required this.long,
    required this.onCameraMove,
    required this.onCameraIdle,
  }) : super(key: key);
  final double long;
  final double lat;
  final void Function(CameraPosition) onCameraMove;
  final void Function() onCameraIdle;

  @override
  LocationMapState createState() => LocationMapState();
}

class LocationMapState extends ConsumerState<LocationMap> {
  final pickUpPanelController = PanelController();
  late GoogleMapController _googleMapController;
  late PolylinePoints polylinePoints;
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];

  _createPolylines(
      double startLat, double startLong, double endLat, double endLong) async {
    polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU', // Google Maps API Key
      PointLatLng(startLat, startLong),
      PointLatLng(endLat, endLong),
      travelMode: TravelMode.driving,
    );
    print(result.status);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: kPrimaryColor,
      points: polylineCoordinates,
      width: 3,
    );
    polylines[id] = polyline;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Camera move listener
    ref.listen<PickUpState>(pickUpProvider, (previous, next) async {
      final prevCameraToMoveLat = previous?.cameraLatToMove;
      final prevCameraToMoveLong = previous?.cameraLongToMove;

      //Capture if user has choosen the postions from the form suggestions
      if (next.cameraLatToMove != prevCameraToMoveLat ||
          next.cameraLongToMove != prevCameraToMoveLong) {
        _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                next.cameraLatToMove!,
                next.cameraLongToMove!,
              ),
              zoom: 18,
            ),
          ),
        );
      }
    });

    ref.listen<PickUpState>(
      pickUpProvider,
      (previous, next) async {
        if (next.dropOffChosen && next.pickUpChosen) {
          LatLng dropoffLatLng = LatLng(
            next.dropoffPlace!.geometry.location.lat,
            next.dropoffPlace!.geometry.location.lng,
          );

          LatLng pickupLatLng = LatLng(
            next.pickupPlace!.geometry.location.lat,
            next.pickupPlace!.geometry.location.lng,
          );
          // LatLngBounds bound =
          //     LatLngBounds(southwest: dropoffLatLng, northeast: pickupLatLng);
          await _createPolylines(
            next.dropoffPlace!.geometry.location.lat,
            next.dropoffPlace!.geometry.location.lng,
            next.pickupPlace!.geometry.location.lat,
            next.pickupPlace!.geometry.location.lng,
          );
          setState(() {});
        }
      },
    );
    final cameraPosition = CameraPosition(
      target: LatLng(
        widget.lat,
        widget.long,
      ),
      zoom: 18,
    );

    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            onMapCreated: (mapController) {
              _googleMapController = mapController;
            },
            mapType: MapType.normal,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
            polylines: Set<Polyline>.of(polylines.values),
            initialCameraPosition: cameraPosition,
            onCameraIdle: widget.onCameraIdle,
            onCameraMove: (positon) {
              widget.onCameraMove(positon);
            },
          ),
        ),
        Positioned.fill(
          child: UserLocationIndicator(),
        ),
      ],
    );
  }
}
