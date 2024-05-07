import 'package:flutter/material.dart';
import 'package:assignment/screens/vault.dart';

class AddVehicle extends StatefulWidget {
  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  List<Widget> vehicleContainers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Your Vehicle")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  vehicleContainers.add(_buildVehicleContainer());
                });
              },
              child: Text("Add New Vehicle"),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: vehicleContainers.reversed.toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVehicleContainer() {
    return Dismissible(
      key: Key(vehicleContainers.length.toString()),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        setState(() {
          vehicleContainers.removeAt(vehicleContainers.length - 1);
        });
      },
      background: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8.0),
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
            SizedBox(width: 95.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyVehicleScreen()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Add Details", style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 9.0),
              child: IconButton(
                icon: Icon(Icons.delete, color: Colors.white),
                onPressed: () {
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
