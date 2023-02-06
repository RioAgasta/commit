import 'package:commit/yard.dart';
import 'package:flutter/material.dart';

import 'kitchen.dart';
import 'livingRoom.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 1;

  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> pageList = [
    LivingRoom(),
    Yard(),
    Kitchen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: pageList.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            label: 'Living Room',
            icon: Icon(Icons.living),
          ),
          BottomNavigationBarItem(
            label: 'Yard',
            icon: Icon(Icons.park),
          ),
          BottomNavigationBarItem(
            label: 'Kitchen',
            icon: Icon(Icons.kitchen),
          ),
        ],
      ),
    );
  }
}
