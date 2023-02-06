import 'package:commit/Widgets/ui_helper.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Yard extends StatefulWidget {
  const Yard({Key? key}) : super(key: key);

  @override
  State<Yard> createState() => _YardState();
}

class _YardState extends State<Yard> {

  Color warna = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              InkWell(
                onTap: (){
                  if(warna == Colors.amber){
                    warna = Colors.lightBlueAccent;
                  } else if (warna == Colors.lightBlueAccent){
                    warna = Colors.amber;
                  }
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: warna,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
