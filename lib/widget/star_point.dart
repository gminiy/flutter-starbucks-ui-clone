import 'package:flutter/material.dart';

class StarPoint extends StatelessWidget {
  const StarPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child:  Row(
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text('9 \u{2605} untile Gold Level', style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold)),
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
            Flexible(
              flex: 1,
              child: Text('text')
            ),
          ],
        ),
      );
  }
}
