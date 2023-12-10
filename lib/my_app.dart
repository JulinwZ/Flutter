import 'package:flutter/material.dart';
import 'my_stateful_widget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SFProText',
      ),
      home: MyStatefulWidget(),
    );
  }
}
