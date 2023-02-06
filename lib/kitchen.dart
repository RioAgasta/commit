import 'package:commit/Widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class Kitchen extends StatefulWidget {
  const Kitchen({Key? key}) : super(key: key);

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
