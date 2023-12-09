import 'package:flutter/material.dart';
import 'scroll_list.dart';
import 'tariffs_and_limits.dart';
import 'top_content.dart';
import 'interests.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isFirstButtonActive = true;
  bool _isSecondButtonActive = false;
  List<bool> _areButtonsGreen = List.generate(7, (index) => false);
  List<String> _textbuttons = [
    'Еда',
    'Саморазвитие',
    'Технологии',
    'Дом',
    'Досуг',
    'Забота о себе',
    'Наука'
  ];

  void _toggleContentVisibility() {
    setState(() {
      _isFirstButtonActive = !_isFirstButtonActive;
      _isSecondButtonActive = !_isSecondButtonActive;
    });
  }

  void _toggleButtonColor(int index) {
    setState(() {
      _areButtonsGreen[index] = !_areButtonsGreen[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Colors.green,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            color: Colors.green,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopContent(
                toggleContentVisibility: _toggleContentVisibility,
                isFirstButtonActive: _isFirstButtonActive,
                isSecondButtonActive: _isSecondButtonActive),
            Visibility(
                visible: _isFirstButtonActive,
                child: Column(
                  children: [
                    ScrollList(),
                    TariffsAndLimits(),
                    Interests(
                        areButtonsGreen: _areButtonsGreen,
                        textbuttons: _textbuttons,
                        toggleButtonColor: _toggleButtonColor),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
