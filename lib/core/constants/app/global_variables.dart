import 'package:flutter/material.dart';

const String uri = 'http://localhost:3000';

class GlobalVariables {
  static const LinearGradient accountAppBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const LinearGradient homeAppBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 114, 226, 221),
      Color.fromARGB(255, 162, 236, 233),
    ],
  );

  static const List<String> productCategories = ["Mobiles", "Essentials", "Appliances", "Books", "Fashion"];
}
