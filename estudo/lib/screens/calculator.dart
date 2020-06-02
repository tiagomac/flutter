import 'package:auto_size_text/auto_size_text.dart';
import 'package:estudo/components/keyboard.dart';
import 'package:estudo/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/display.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
        home: Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
            color: Color.fromRGBO(48, 48, 48, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText("TIAGO É LINDO",
                      minFontSize: 20,
                      maxFontSize: 80,
                      maxLines: 1,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        decoration: TextDecoration.none,
                        fontSize: 80,
                        color: Colors.white,
                      )),
                )
              ],
            )),
      ),
      Display(memory.value),
      Keyboard(_onPressed),
    ]));
  }
}
