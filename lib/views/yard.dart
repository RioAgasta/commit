import 'package:flutter/material.dart';

class Yard extends StatefulWidget {
  const Yard({Key? key}) : super(key: key);

  @override
  State<Yard> createState() => _YardState();
}

class _YardState extends State<Yard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          );
        },
      ),
    );
  }
}
