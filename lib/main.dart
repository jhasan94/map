import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map/services/geolocator_service.dart';
import 'package:map/ui/map.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final geoService = GeolocatorService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => geoService.getInitialLocation(),
      child: MaterialApp(
        home: Consumer<Position>(
          builder: (context, position, widget) {
            return Maps(position);
          },
        ),
      ),
    );
  }
}
