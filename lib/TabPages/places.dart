import 'package:flutter/material.dart';

class places extends StatefulWidget {
  const places({super.key});

  @override
  State<places> createState() => _placesState();
}

class _placesState extends State<places> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Text("Beautiful locations looking right at you"),
    );
  }
}
