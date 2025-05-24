import 'package:flutter/material.dart';

import '../widgets/button_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Calculator"), backgroundColor: Colors.orange),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                "564",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,

              ),
              itemCount: 16,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text("1",style: TextStyle(color: Colors.white),)
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
