import 'package:flutter/material.dart';

class StarPoint extends StatelessWidget {
  const StarPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('9 \u{2605} untile Gold Level',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  LinearProgressIndicator(
                    value: 0.6,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                    minHeight: 8,
                    semanticsLabel: 'Linear progress indicator',
                  ),
                ],
              ),
            ),
          ),
          const Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '16',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '25\u{2605}',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
