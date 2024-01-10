import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}



class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resizable Container'),
      ),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: isExpanded ? 200.0 : 100.0,
                height: isExpanded ? 200.0 : 100.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    isExpanded ? 'Expanded' : 'Tap me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.0,),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: isExpanded ? 200.0 : 100.0,
                height: isExpanded ? 200.0 : 100.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    isExpanded ? 'Expanded' : 'Tap me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
