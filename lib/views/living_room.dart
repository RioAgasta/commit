import 'package:flutter/material.dart';
import 'package:commit/constants/sharedPrefs.dart';
import '../constants/ui_helper.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {

  int jumlah = 1;

  loadValues() async {
    jumlah = (await sharedPrefs.getInt('jumlah'))!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    jumlah++;
                    sharedPrefs.setInt('jumlah', jumlah);
                    loadValues();
                  },
                  child: Icon(Icons.plus_one),
                ),
                ElevatedButton(
                  onPressed: () {
                    if(jumlah >= 1){
                      jumlah--;
                      sharedPrefs.setInt('jumlah', jumlah);
                      loadValues();
                    }
                  },
                  child: Icon(Icons.exposure_minus_1),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: jumlah,
              itemBuilder: (context, index) {
                index += 1;
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text('ListView $index'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
