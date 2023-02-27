import 'package:flutter/material.dart';
import 'package:my_bike_buddy/bike.dart';
import 'package:my_bike_buddy/loadingPage.dart';
import 'package:my_bike_buddy/home.dart';
import 'package:my_bike_buddy/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoadingPage(),
        routes: {
          "Logout": (context) => HomePage(),
          "Bike": (context) => BikePage(),
          "Map": (context) => MapPage(),
        });
  }
}
