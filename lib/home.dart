import 'package:flutter/material.dart';
import 'package:my_bike_buddy/app_drawer.dart';
import 'package:my_bike_buddy/login.dart';
import 'package:my_bike_buddy/register.dart';

class HomePage extends StatelessWidget {
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
            TextButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
            SizedBox(height: 16.0),
            TextButton(
              child: Text('Register'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
