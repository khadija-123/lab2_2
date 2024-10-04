import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Widget_App'),
      ),
      body: Column(
        children: <Widget>[
          // Image widget
          Expanded(
            child: Image.asset(
              'assets/images/Easter_Rabbits_Wicker_basket_Eggs_615218_1280x853.jpg',
              fit: BoxFit.contain,
            ),
          ),

          // Row with Icons and Text
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: 50, color: Colors.blue),
                Text(
                  'Home Icon',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.favorite, size: 50, color: Colors.red),
                Text(
                  'Favorite Icon',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),

          // ElevatedButton
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Button Pressed!')),
              );
            },
            child: const Text('Click Me'),
          ),
        ],
      ),
    );
  }
}