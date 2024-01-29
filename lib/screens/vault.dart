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
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40.0, // Adjust the size as needed
                          ),
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
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40.0, // Adjust the size as needed
                          ),
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
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40.0, // Adjust the size as needed
                          ),
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
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40.0, // Adjust the size as needed
                          ),
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
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40.0, // Adjust the size as needed
                          ),
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
                      padding: const EdgeInsets.only(left: 170.0),
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
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40.0, // Adjust the size as needed
                              ),
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
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40.0, // Adjust the size as needed
                              ),
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
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40.0, // Adjust the size as needed
                              ),
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


