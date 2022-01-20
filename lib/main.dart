import 'package:flutter/material.dart';

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
        body: Hist(),
      ),
    );
  }
}

class Hist extends StatefulWidget {
  const Hist({Key? key}) : super(key: key);

  @override
  _HistState createState() => _HistState();
}

class _HistState extends State<Hist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text(
          'test',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
