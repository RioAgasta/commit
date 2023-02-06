import 'package:flutter/material.dart';
import 'basement.dart';
import 'yard.dart';
import 'living_room.dart';
import 'kitchen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const List<Widget> pageList = [
    LivingRoom(),
    Yard(),
    Kitchen(),
    Basement(),
  ];

  int selectedIndex = 0;

  void _onTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.living),
            label: 'Living Room',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.park),
            label: 'Yard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            label: 'Kitchen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.door_back_door),
            label: 'Basement',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
