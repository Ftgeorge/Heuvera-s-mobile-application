import 'package:flutter/material.dart';

class For_you extends StatefulWidget {
  const For_you({super.key});

  @override
  State<For_you> createState() => _For_youState();
}

class _For_youState extends State<For_you> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Text("Make your choices here"),
    );
  }
}
