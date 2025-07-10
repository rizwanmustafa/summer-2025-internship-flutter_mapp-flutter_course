import 'package:flutter/material.dart';

class ExpandedFlexibleTestPage extends StatelessWidget {
  const ExpandedFlexibleTestPage({super.key});

  // Flexible and Expanded should normally be used in rows / columns
  // Flexible and Expanded expand/shrink in the direction of their parent widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 20.0,
                  color: Colors.green,
                  child: Text('Hello!'),
                ),
              ),
              Flexible(
                child: Container(
                  height: 20.0,
                  color: Colors.orange,
                  child: Text("Hello World!"),
                ),
              ),
            ],
          ),

          Divider(),

          Row(
            children: [
              Flexible(
                child: Container(
                  height: 20.0,
                  color: Colors.orange,
                  child: Text("Hello World!"),
                ),
              ),

              Expanded(
                child: Container(
                  height: 20.0,
                  color: Colors.green,
                  child: Text('Hello!'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
