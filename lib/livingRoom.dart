import 'package:flutter/material.dart';

import 'Widgets/ui_helper.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              'Daftar Kontak',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          verticalSpaceMedium,
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text('List 1'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){},
                onLongPress: (){},
              ),
              ListTile(
                title: Text('List 2'),
                subtitle: Text('Ini Subtitle'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text('List 3'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
