import 'package:assignment/screens/constant.dart';
import 'package:flutter/material.dart';
import 'booking_page.dart';
import 'profile_page.dart';
import 'vault.dart';

class SosScreen extends StatefulWidget {
  const SosScreen({super.key});

  @override
  State<SosScreen> createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency Booking"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            Center(
                child: Text(
                  "Choose your Emergency Service",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Tyre"),
                        Text("Puncture"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 50.0),
                Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Battery"),
                        Text("Down"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 50.0),
                Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Met An"),
                        Text("Accident"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      box(),
                      Column(
                        children: [
                          Text("Ran Out"),
                          Text("of Fuel"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 45.0),
                Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Vehicle Stopped"),
                        Text("Unexpectedly"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 45.0),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Column(
                    children: [
                      box(),
                      Column(
                        children: [
                          Text("Other"),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 380.0),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(150.0, 50.0)),
                  // Set your desired width and height
                ),
                onPressed: () {
                  // Functionality to add a new container
                },
                child: Text("Book", style: TextStyle(fontSize: 20.0)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(25.0),
        child: FloatingActionButton(
          onPressed: () {
          },
          shape: CircleBorder(),
          child: Icon(Icons.call),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
