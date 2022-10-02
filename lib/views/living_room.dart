import 'package:flutter/material.dart';
import 'package:commit/widgets/symmetricalSpace.dart';

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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Living Room'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('List'),
                trailing: Icon(Icons.add),
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
