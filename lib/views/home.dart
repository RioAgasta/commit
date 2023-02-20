import 'package:commit/constants/ui_helper.dart';
import 'package:commit/views/yard.dart';
import 'package:flutter/material.dart';

import 'basement.dart';
import 'kitchen.dart';
import 'living_room.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 1;
  List<Widget> pageList = [LivingRoom(), Yard(), Kitchen(), Basement()];
  void onTap(index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commit Project'),
        centerTitle: true,
        actions: [
          Icon(Icons.qr_code),
          horizontalSpaceMedium,
        ],
      ),
      body: pageList.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
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
          BottomNavigationBarItem(
            label: 'Basement',
            icon: Icon(Icons.door_back_door),
          ),
        ],
      ),
    );
  }
}
