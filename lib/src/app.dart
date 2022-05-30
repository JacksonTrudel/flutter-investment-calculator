import 'package:flutter/material.dart';
import 'package:my_first_app/src/views/ui/pages/calculator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: const InterestCalculator(),
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}
