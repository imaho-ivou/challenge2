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
                  mainBrain.histoire[mainBrain.compteur].enoncer,
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
                    if (mainBrain.compteur == 0) {
                      mainBrain.compteur = 1;
                    } else if (mainBrain.compteur == 1) {
                      mainBrain.compteur = 3;
                    } else if (mainBrain.compteur == 2) {
                      mainBrain.compteur = 4;
                    } else if ((mainBrain.compteur == 5) ||
                        (mainBrain.compteur == 4) ||
                        (mainBrain.compteur == 3)) {
                      mainBrain.compteur = 0;
                    }
                  });
                },
                child: Text(mainBrain.histoire[mainBrain.compteur].choix1),
              ),
            ),
          ),
          Visibility(
            visible: mainBrain.histoire[mainBrain.compteur].choix2 != '',
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
                      if (mainBrain.compteur == 0) {
                        mainBrain.compteur = 2;
                      } else if (mainBrain.compteur == 1) {
                        mainBrain.compteur = 2;
                      } else if (mainBrain.compteur == 2) {
                        mainBrain.compteur = 5;
                      }
                    });
                  },
                  child: Text(mainBrain.histoire[mainBrain.compteur].choix2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
