import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  static const _initialCameraPosition = CameraPosition(
      target: LatLng(
        9.0123,
        38.7626,
      ),
      zoom: 13.0);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Marker _origin = Marker(
    markerId: const MarkerId('origin'),
    infoWindow: const InfoWindow(title: 'Origin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: const LatLng(9.0123, 38.7626),
  );
  late GoogleMapController _googleMapController;

  Future<Position> getLocation() async {
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    return position;

    //late Dio _info;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Position>(
        future: getLocation(),
        builder: (context, snapshot) {
          return Scaffold(
            body: GoogleMap(
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              initialCameraPosition: MapScreen._initialCameraPosition,
              onMapCreated: (controller) => _googleMapController = controller,
              markers: {
                if (snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.done)
                  _getDestinationMarker(snapshot.data!),
                _origin,
              },
            ),
          );
        });
  }

  Marker _getDestinationMarker(Position position) {
    final Marker destinationMarker = Marker(
      markerId: const MarkerId('destination'),
      infoWindow: const InfoWindow(title: 'Destination'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: LatLng(position.latitude, position.longitude),
    );

    return destinationMarker;
  }
}
