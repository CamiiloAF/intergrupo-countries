import 'package:flutter/material.dart';

Widget createWidgetForTesting({required final Widget child}) {
  return MaterialApp(
    home: Material(
      child: child,
    ),
  );
}
