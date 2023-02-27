import 'package:flutter/material.dart';
import 'package:my_bike_buddy/bike.dart';
import 'package:my_bike_buddy/contacts.dart';
import 'package:my_bike_buddy/home.dart';
import 'package:my_bike_buddy/map.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // ignore: prefer_const_literals_to_create_immutables
        child: ListView(children: [
      const DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text("Menu",
              style: TextStyle(color: Colors.white, fontSize: 28.0))),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Logout"),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.thumb_up),
        title: Text("Home"),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BikePage(),
            ),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.contact_emergency),
        title: Text("Contacts"),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ContactsPage(),
            ),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.map),
        title: Text("Map"),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MapPage(),
            ),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text("A propos"),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("A propos"),
                  content: Text("Cette application a été développée par LE"),
                  actions: <Widget>[
                    TextButton(
                      child: Text("Fermer"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        },
      ),
      ListTile(
        title: Text(""),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  //content: Text("Cette application a été développée par LE"),
                  content: Image.asset('assets/gif.gif'),
                  actions: <Widget>[
                    TextButton(
                      child: Text("Fermer"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        },
      ),
    ]));
  }
}
