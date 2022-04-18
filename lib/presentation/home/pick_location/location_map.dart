import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/presentation/home/pick_location/widgets/user_location_indicator.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

class LocationMap extends ConsumerStatefulWidget {
  const LocationMap({
    Key? key,
    required this.locationData,
    required this.onCameraMove,
  }) : super(key: key);
  final LocationData locationData;
  final void Function(CameraPosition) onCameraMove;

  @override
  LocationMapState createState() => LocationMapState();
}

class LocationMapState extends ConsumerState<LocationMap> {
  Set<Marker> markers = Set();
  final pickUpPanelController = PanelController();
  late GoogleMapController _googleMapController;
  late PolylinePoints polylinePoints;

  List<LatLng> polylineCoordinates = [];
  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<PickUpState>(pickUpProvider, (previous, next) async {
      if (next.pickUpChosen) {
        setState(() {});
      } else if (next.dropOffChosen) {
        _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                next.dropoffPlace!.geometry.location.lat,
                next.dropoffPlace!.geometry.location.lng,
              ),
            ),
          ),
        );
      }
    });
    final cameraPosition = CameraPosition(
      target: LatLng(
        widget.locationData.latitude!,
        widget.locationData.longitude!,
      ),
      zoom: 18,
    );

    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            polylines: {
              Polyline(
                polylineId: PolylineId('route'),
                color: kPrimaryColor,
              ),
            },
            onMapCreated: (mapController) {
              _googleMapController = mapController;
            },
            initialCameraPosition: cameraPosition,
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
