class RouteModel {
  final String origin;
  final String destination;
  final DateTime dateTime;
  final String estimatedTime;

  RouteModel({
    required this.origin,
    required this.destination,
    required this.dateTime,
    required this.estimatedTime,
  });
}
