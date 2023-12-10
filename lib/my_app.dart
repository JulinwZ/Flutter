import 'package:flutter/material.dart';
import 'my_stateful_widget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        fontFamily: 'SFProText',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.blue
                    : null;
              },
            ),
          ),
        ),
      ),
      home: MyStatefulWidget(),
    );
  }
}
