import 'package:flutter/material.dart';

class apartment extends StatefulWidget {
  const apartment({super.key});

  @override
  State<apartment> createState() => _apartmentState();
}

class _apartmentState extends State<apartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Text("Your apartments choices here"),
    );
  }
}
