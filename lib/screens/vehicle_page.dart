import 'package:assignment/screens/vault.dart';
import 'package:flutter/material.dart';

class AddVehicle extends StatefulWidget {
  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  List<Widget> vehicleContainers = []; // List to store created containers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Your Vehicle"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // Align the button at the bottom
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Functionality to add a new container
                    setState(() {
                      vehicleContainers.add(_buildVehicleContainer());
                    });
                  },
                  child: Text("Add New Vehicle"),
                ),
              ),
              SizedBox(height: 20.0),
              // Display the created containers in reverse order
              ...vehicleContainers.reversed,
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildVehicleContainer() {
    return Dismissible(
      key: Key(vehicleContainers.length.toString()),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        // Functionality to remove the container
        setState(() {
          vehicleContainers.removeAt(vehicleContainers.length - 1);
        });
      },
      background: Container(

        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
            color: Colors.red,
          borderRadius: BorderRadius.circular(8.0)
        ),
        alignment: Alignment.centerLeft,
        child: Icon(Icons.delete, color: Colors.white),
      ),
      child: Container(
        width: double.infinity,
        height: 100.0,
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'New Vehicle',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 130.0,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        // Functionality to remove the container
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyVehicleScreen()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Add Details",style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9.0),
              child: IconButton(
                icon: Icon(Icons.delete, color: Colors.white),
                onPressed: () {
                  // Functionality to remove the container
                  setState(() {
                    vehicleContainers.removeLast();
                  });
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
