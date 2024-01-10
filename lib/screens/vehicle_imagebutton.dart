import 'package:flutter/material.dart';

class AddVehicleScreen extends StatefulWidget {
  @override
  _AddVehicleScreenState createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'New Vehicle',
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.white),
              onPressed: () {
                // Functionality to remove the container
                setState(() {
                  vehicleContainers.removeLast();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
