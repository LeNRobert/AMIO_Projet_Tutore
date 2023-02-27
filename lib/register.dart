import 'package:flutter/material.dart';
import 'package:my_bike_buddy/bike.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  validator: (String? value) {
                    if (value != null && value.isEmpty) {
                      {
                        return 'Please enter a username';
                      }
                      return null;
                    }
                    onSaved:
                    (value) => _username = value;
                  }),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
                onSaved: (value) => _email = value!,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
              ),
              SizedBox(height: 16.0),
              TextButton(
                child: Text('Register'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BikePage(),
                    ),
                  );
                  /*
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    // Perform registration logic here
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }
                  */
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
