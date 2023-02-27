import 'package:flutter/material.dart';
import 'package:my_bike_buddy/app_drawer.dart';
import 'package:my_bike_buddy/map.dart';

class BikePage extends StatefulWidget {
  @override
  _BikePageState createState() => _BikePageState();
}

class _BikePageState extends State<BikePage> {
  bool _value = true;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Bike Buddy"),
        ),
        drawer: const AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                "https://www.waouo.com/wp-content/uploads/2011/09/doralexploratriceenvelo.jpg",
                width: 200.0,
                height: 200.0,
              ),
              SizedBox(height: 16.0),
              Text(
                _value ? "Locked" : "Unlocked",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Switch(
                value: _value,
                onChanged: _onChanged,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.map))
            ],
          ),
        ));
  }
}
