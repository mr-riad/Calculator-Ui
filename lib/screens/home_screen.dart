import 'package:flutter/material.dart';
import '../widgets/button_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String displayText = "0";
  String _output = '0';
  double _num1 = 0;
  double _num2 = 0;
  String _operation = '';
  bool _shouldReset = false;

  List<String> calculatorButtons = [
    "C",
    "%",
    "⌫",
    "÷",
    "7",
    "8",
    "9",
    "×",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "00",
    "0",
    ".",
    "=",
  ];

  void _handleButtonClick(String value){
    setState(() {
      if(value =="C"){
        displayText = "0";
        _output = "0";
        _num1 = 0;
        _num2 = 0;
        _operation ='';
        _shouldReset=false;
      }
      else if(value =="⌫"){
        if(displayText.length>1){
          displayText = displayText.substring(0, displayText.length -1);
        }
        else{
          displayText="0";
        }

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Calculator"), backgroundColor: Colors.orange),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Text(
                displayText,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.history_toggle_off,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: calculatorButtons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(6),
                  child: CustomButton(
                    onClick: () {},
                    text: calculatorButtons[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
