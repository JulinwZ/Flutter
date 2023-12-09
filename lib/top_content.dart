import 'package:flutter/material.dart';

class TopContent extends StatelessWidget {
  final Function() toggleContentVisibility;
  final bool isFirstButtonActive;
  final bool isSecondButtonActive;

  TopContent({
    required this.toggleContentVisibility,
    required this.isFirstButtonActive,
    required this.isSecondButtonActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/avatar.png'),
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'Екатерина',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: isFirstButtonActive
                            ? Colors.green
                            : Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed:
                        isFirstButtonActive ? null : toggleContentVisibility,
                    child:
                        Text('Профиль', style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: isSecondButtonActive
                            ? Colors.green
                            : Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed:
                        isSecondButtonActive ? null : toggleContentVisibility,
                    child: Text('Настройки',
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
