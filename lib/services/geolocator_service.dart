import 'package:geolocator/geolocator.dart';

class GeolocatorService {
  final Geolocator geolocator = Geolocator();

  Stream getCurrentLocation() {
    var locationOptions =
        LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);
    return geolocator.getPositionStream(locationOptions);
  }

  Future getInitialLocation() async {
    return geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
