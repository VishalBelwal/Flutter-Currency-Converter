import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart'; //relative importing

void main() {
  runApp(const MyApp());
}

// //there are three type of widgets(state is a type of data that how the widget should llook alike)
// /*
// 1. stateless widget--->basically no such changes in the states(state is immutable)
// 2.stateful widgets--->changes in states tooks place(state is mutable)
// 3.Inherited Widgets
// */

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); //optionally taking some stuff from the constructor and optionally passing its value

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}
