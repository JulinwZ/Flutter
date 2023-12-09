import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  final List<bool> areButtonsGreen;
  final List<String> textbuttons;
  final Function(int index) toggleButtonColor;

  Interests({
    required this.areButtonsGreen,
    required this.textbuttons,
    required this.toggleButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Интересы',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Text(
          'Мы подбираем истории и предолжения по темам, которые вам нравятся',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          children: List.generate(
              textbuttons.length,
              (index) => ElevatedButton(
                    onPressed: () {
                      toggleButtonColor(index);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: areButtonsGreen[index]
                          ? Colors.green
                          : const Color.fromARGB(255, 209, 209, 209),
                    ),
                    child: Text(
                      textbuttons[index],
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
        )
      ]),
    );
  }
}
