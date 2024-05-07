import 'package:assignment/screens/constant.dart';
import 'package:flutter/material.dart';

import 'animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: [
          Padding(
              padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              child: ColorContainerSlider()),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Service by Location",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Home"),
                        Text("Services"),
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
                        Text("Garage"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Regular Services",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
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
                        Text("Vehicle"),
                        Text("Inspection"),
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
                        Text("Wash &"),
                        Text("Dry"),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Running Services",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Brake"),
                        Text("Maintenance"),
                      ],
                    ),
                  ],
                ),
              const SizedBox(width: 50.0),
               Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Cable"),
                        Text("Replacement"),
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
                        Text("Insurance"),
                        Text("Claims"),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Repairs",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Column(
                  children: [
                   box(),
                    Column(
                      children: [
                        Text("Regular"),
                        Text("Repairs"),
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
                        Text("Engine"),
                        Text("Repairs"),
                      ],
                    ),
                  ],
                ),
              SizedBox(width: 50.0),
               Column(
                  children: [
                 Image.asset(
                 'assets/images/shocker.jpg',
                   width: 70.0,
                   height: 70.0,
               ),
                    Column(
                      children: [
                        Text("Shocker"),
                        Text("Repairs"),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Value Added Services",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Column(
                  children: [
                    box(),
                    Column(
                      children: [
                        Text("Tyres"),
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
                        Text("Accessories"),
                      ],
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              )),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Service According to your need",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: ServiceSlider()),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Select Your Ride",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: RideSlider(),
          ),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        shape: CircleBorder(),
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.blue,
      ),
    );
  }
}