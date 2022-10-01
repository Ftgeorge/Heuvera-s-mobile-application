import 'package:flutter/material.dart';

class Homesection extends StatefulWidget {
  const Homesection({super.key});

  @override
  State<Homesection> createState() => _HomesectionState();
}

class _HomesectionState extends State<Homesection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Text("Here are the things you wanted"),
    );
  }
}
