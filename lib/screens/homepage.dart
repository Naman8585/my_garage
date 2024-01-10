import 'package:assignment/screens/sos_screen.dart';
import 'package:assignment/screens/vehicle_imagebutton.dart';
import 'package:flutter/material.dart';
import 'booking_page.dart';
import 'profile_page.dart';
import 'vehicle_page.dart';
import 'animations.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int selectedIndex = 0; // Track the selected index

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Garage"),
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: GestureDetector(
            onTap: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddVehicleScreen() ),
            );},
            child: Image.asset(
              'assets/images/bike.png',
              width: 70.0,
              height: 70.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        physics: BouncingScrollPhysics(),
        children: [
              ListView(
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
              // Booking Screen
              BookingScreen(numberOfContainers: 10),
              // My Vehicle Screen
              MyVehicleScreen(),
              // Profile Screen
              ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBottomBarItem(Icons.home_filled, 'Home', 0),
              buildBottomBarItem(Icons.history_outlined, 'Booking', 1),
              SizedBox(width: 20.0),
              buildBottomBarItem(Icons.pedal_bike, 'My Vehicle', 2),
              buildBottomBarItem(Icons.account_circle_sharp, 'Profile', 3),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SosScreen()),
          );
        },
        shape: CircleBorder(),
        child: Icon(Icons.sos_outlined),
        backgroundColor: Colors.red,
      ),
    );
  }

  Widget buildBottomBarItem(IconData icon, String label, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: selectedIndex == index ? Colors.red : Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(icon, color: selectedIndex == index ? Colors.white : Colors.black),
              ),
            ),
            SizedBox(height: 0.5),
            Text(label, style: TextStyle(color: selectedIndex == index ? Colors.red : Colors.black)),
          ],
        ),
      ),
    );
  }
}