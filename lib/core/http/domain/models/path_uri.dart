class PathUri {
  const PathUri({
    required this.service,
  });

  final String service;

  /// [toString] returns the full endpoint
  @override
  String toString() => service;
}
