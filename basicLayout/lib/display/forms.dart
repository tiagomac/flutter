import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Outro texto!'),
            ),
          ),
        ],
      ),
    );
  }
}
