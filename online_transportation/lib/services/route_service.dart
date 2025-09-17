import '../models/route_model.dart';

class RouteService {
  RouteModel getRoute(String origin, String destination, DateTime dateTime) {
    // dummy: estimasi waktu selalu 30 menit
    return RouteModel(
      origin: origin,
      destination: destination,
      dateTime: dateTime,
      estimatedTime: "30 menit",
    );
  }
}
