import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({
    Key? key,
    required this.locationData,
    required this.onCameraMove,
  }) : super(key: key);
  final LocationData locationData;
  final void Function(CameraPosition) onCameraMove;

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  Set<Marker> markers = Set();
  final pickUpPanelController = PanelController();
  late GoogleMapController _googleMapController;

  initMarker() async {
    final marker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
        size: Size(32, 32),
      ),
      "assets/icons/taxi-stop.png",
    );
    markers.add(
      Marker(
        markerId: MarkerId("position"),
        position: LatLng(
          widget.locationData.latitude!,
          widget.locationData.longitude!,
        ),
        icon: marker,
        draggable: true,
      ),
    );

    setState(() {});
  }

  @override
  void initState() {
    // initMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    initMarker();
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
            rotateGesturesEnabled: true,
            onMapCreated: (mapController) {
              _googleMapController = mapController;
            },
            initialCameraPosition: cameraPosition,
            // markers: markers,
            onCameraMove: (positon) {
              widget.onCameraMove(positon);
              // setState(() {});
            },
          ),
        ),
        Positioned.fill(
            child: Center(
          child: Icon(Icons.person),
        ))
      ],
    );
  }
}
