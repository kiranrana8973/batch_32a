class AreaModel {
  final double radius;

  AreaModel({required this.radius});

  double calculateAreaOfCircle() {
    return 3.14 * radius * radius;
  }
}
