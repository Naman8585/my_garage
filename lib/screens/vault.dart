import 'package:assignment/screens/constant.dart';
import 'package:flutter/material.dart';

class MyVehicleScreen extends StatelessWidget {
  const MyVehicleScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vault",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Personal',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  addbox(),
                  Column(
                    children: [
                      Text("Driving"),
                      Text("License"),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 50.0),
              Column(
                children: [
                  addbox(),
                  Column(
                    children: [
                      Text("Adhaar"),
                      Text("Front"),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 50.0),
              Column(
                children: [
                  addbox(),
                  Column(
                    children: [
                      Text("Adhaar"),
                      Text("Back"),
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
              Column(
                children: [
                  addbox(),
                  Column(
                    children: [
                      Text("PAN"),
                      Text("Card"),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 50.0),
              Column(
                children: [
                  addbox(),
                  Column(
                    children: [
                      Text("Job"),
                      Text("Card"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          BikeDetail(),
        ],
      ),
    );
  }
}

class BikeDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Vehicle',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160.0),
                      child: Image.asset(
                        "assets/images/bike.png",
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 5.0),
                      child: Text("Bike Name"),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        addbox(),
                        Column(
                          children: [
                            Text("R.C"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 50.0),
                    Column(
                      children: [
                        addbox(),
                        Column(
                          children: [
                            Text("Insurance"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 50.0),
                    Column(
                      children: [
                        addbox(),
                        Column(
                          children: [
                            Text("Pollution"),
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
                    Column(
                      children: [
                        Container(
                          height: 50.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              "Bike number",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
