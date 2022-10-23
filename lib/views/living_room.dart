import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {

  bool isSelected = false;

  void _onTap(){
   setState(() {
     isSelected =! isSelected;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Living Room'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('List'),
                trailing: const Icon(Icons.add),
                selected: isSelected,
                onTap: _onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
