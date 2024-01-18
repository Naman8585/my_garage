import 'package:assignment/screens/home_screen.dart';
import 'package:assignment/screens/sos_screen.dart';
import 'package:assignment/screens/vault.dart';
import 'package:assignment/screens/vehicle_page.dart';
import 'package:flutter/material.dart';
import 'package:assignment/screens/booking_page.dart'; // Added correct import
import 'package:assignment/screens/profile_page.dart'; // Added correct import


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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyVehicleScreen()),
              );
            },
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
             HomePage(),
              // Booking Screen
              BookingScreen(numberOfContainers: 10),
              // My Vehicle Screen
          AddVehicle(),
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