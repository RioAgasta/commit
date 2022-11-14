import 'package:commit/widgets/sidebar.dart';
import 'package:commit/widgets/symmetricalSpace.dart';
import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  bool isSelected = false;

  void _onTap() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  Future<String?> getData() async {
    await Future.delayed(Duration(seconds: 3));

    return 'Get Data Done';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Living Room'),
      ),
      drawer: Sidebar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    print(snapshot);
                    final data = snapshot.data;
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Text('$data');
                    }
                    return CircularProgressIndicator();
                  },
                ),
                verticalSpaceMedium,
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Reload'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
