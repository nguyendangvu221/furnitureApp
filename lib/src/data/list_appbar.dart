import 'package:flutter/material.dart';
import 'package:furniture_app/src/ui/Custom_AppBar/appbar_custom.dart';

class ListAppBar {
  final List<Widget> appBars = [
    const AppBarModern(nameAppBar: "Modern Living"),
    const AppBarModern(
      nameAppBar: "Favorite",
    ),
    const AppBarModern(
      nameAppBar: "Setting",
    ),
    const AppBarModern(
      nameAppBar: "User",
    ),
  ];
}
