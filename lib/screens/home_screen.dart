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
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
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
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
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
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
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
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
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
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              InkWell(
                onTap: () {
                  // Handle onTap
                },
                child: Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Periodic"),
                        Text("Services"),
                      ],
                    ),
                  ],
                ),
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