import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter, // Align image to the top center
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue, // Background color of the container
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'This is a container',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Positioned(
              top: -50, // Adjust the position of the image
              child: Image.asset(
                'assets/images/image3.png', // Your image path
                width: 100, // Width of the image
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
