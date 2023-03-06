import 'dart:async';

import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../resources/size_manager.dart';

class TrackingMapView extends StatefulWidget {
  const TrackingMapView({super.key, required this.username});
  final String username;

  @override
  State<TrackingMapView> createState() => _TrackingMapViewState();
}

class _TrackingMapViewState extends State<TrackingMapView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(StringManager.tracking)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.username,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: SizeManager.s50,
                ),
                SizedBox(
                  height: SizeManager.s354,
                  width: SizeManager.s354,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    markers: {
                      Marker(
                          markerId: const MarkerId("google"),
                          position: _kGooglePlex.target)
                    },
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
