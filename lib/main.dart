import 'package:challenge2/mainBrain.dart';
import 'package:flutter/material.dart';
import 'mainBrain.dart';

MainBrain mainBrain = MainBrain();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Histoire(),
      ),
    );
  }
}

class Histoire extends StatefulWidget {
  const Histoire({Key? key}) : super(key: key);

  @override
  _HistoireState createState() => _HistoireState();
}

class _HistoireState extends State<Histoire> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  mainBrain.getEnoncer(),
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  primary: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    mainBrain.nextChoix1();
                  });
                },
                child: Text(mainBrain.getChoix1()),
              ),
            ),
          ),
          Visibility(
            visible: mainBrain.getChoix2() != '',
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      mainBrain.nextChoix2();
                    });
                  },
                  child: Text(mainBrain.getChoix2()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
