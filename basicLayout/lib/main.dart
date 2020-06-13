import 'dart:ui';

import 'package:flutter/material.dart';

import 'display/forms.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Container App',
        home: Builder(
          builder: (context) => Scaffold(
            drawer: Drawer(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            child: Text('Container'),
                            onPressed: () => {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            child: Text('Form'),
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forms()))
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              title: Text('Container'),
            ),
            body: Column(children: <Widget>[
              Container(
                color: Colors.pink,
                width: 100.0,
                height: 100.0,
              ),
            ]),
          ),
        ));
  }
}
