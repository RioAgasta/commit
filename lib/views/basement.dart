import 'package:commit/constants/ui_helper.dart';
import 'package:flutter/material.dart';

class Basement extends StatefulWidget {
  const Basement({Key? key}) : super(key: key);

  @override
  State<Basement> createState() => _BasementState();
}

class _BasementState extends State<Basement> {

  String gambar1 = "assets/puan.jpg";
  String gambar2 = "assets/gambarlain.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                width: screenWidth(context),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      'Power',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Voltage'),
                        Text(
                          'V',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Current'),
                        Text(
                          'A',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Power'),
                        Text(
                          'W',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Energy'),
                        Text(
                          'kWh',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Frequency'),
                        Text(
                          'Hz',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text('Saklar'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Switch(value: false, onChanged: (index) {}),
                              Icon(Icons.lightbulb),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  horizontalSpaceSmall,
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text('Steker'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Switch(value: false, onChanged: (index) {}),
                              Icon(Icons.bolt),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceSmall,
              Container(
                width: screenWidth(context),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),

                  ),
                  child: Text('RESET', style: TextStyle(color: Colors.red),),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
