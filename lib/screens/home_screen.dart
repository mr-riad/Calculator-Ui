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
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            child: Text("564",style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
          Row(
            children: [
              CustomButton(
                onClick: (){},
                text: '1',

              )
            ],
          )
        ],
      ),
    );
  }
}


