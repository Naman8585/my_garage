import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BookingScreen(numberOfContainers: 10), // Change the number as needed
  ));
}

class BookingScreen extends StatelessWidget {
  final int numberOfContainers;

  BookingScreen({required this.numberOfContainers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numberOfContainers,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Handle onTap
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500), // Set your desired duration
                opacity: 1.0, // Initial opacity
                child: Container(
                  height: 200.0,
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Container $index',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
