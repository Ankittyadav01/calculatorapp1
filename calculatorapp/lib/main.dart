import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          // add function  for button press
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // claculator display
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "0",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 100),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("AC", Colors.grey, Colors.black),
                  calcbutton("+/-", Colors.grey, Colors.black),
                  calcbutton("%", Colors.grey, Colors.black),
                  calcbutton("/", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("7", Colors.grey, Colors.black),
                  calcbutton("8", Colors.grey, Colors.black),
                  calcbutton("9", Colors.grey, Colors.black),
                  calcbutton("X", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("4", Colors.grey, Colors.black),
                  calcbutton("5", Colors.grey, Colors.black),
                  calcbutton("6", Colors.grey, Colors.black),
                  calcbutton("-", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("1", Colors.grey, Colors.black),
                  calcbutton("2", Colors.grey, Colors.black),
                  calcbutton("3", Colors.grey, Colors.black),
                  calcbutton("+", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(34, 20, 134, 34),
                    onPressed: () {},
                    shape: StadiumBorder(),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 35, color: Colors.grey),
                    ),
                  ),
                  calcbutton(".", Colors.grey, Colors.black),
                  calcbutton("=", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
