import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key})
      : super(key: key); // Use 'Key? key' parameter correctly.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black.
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "hi", // Replace with your actual app title.
        ),
        centerTitle: true,
      ),
    );
  }
}
