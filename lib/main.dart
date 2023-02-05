import 'package:flutter/material.dart';
import 'package:untitled1/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Application"),
        backgroundColor: Colors.orange,
        actions: [
          Icon(
            Icons.notification_important,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.add,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //container

              Icon(Icons.close, color: Colors.red),

              // Image.network(src)
              Text(
                'Email:',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              TextFormField(),
              SizedBox(
                height: 25,
              ),
              Text(
                'Password:',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
