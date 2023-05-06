import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 8, 35, 67),
          Color.fromARGB(255, 22, 195, 132),
          Color.fromARGB(255, 147, 78, 18),
        ),
      ),
    ),
  );
}
