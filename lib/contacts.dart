// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_bike_buddy/app_drawer.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Text("Contact ${index + 1}")));
          }),
    );
  }
}
