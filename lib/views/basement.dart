import 'package:commit/widgets/symmetricalSpace.dart';
import 'package:flutter/material.dart';

import '../data/shared_prefs.dart';

class Basement extends StatefulWidget {
  const Basement({Key? key}) : super(key: key);

  @override
  State<Basement> createState() => _BasementState();
}

class _BasementState extends State<Basement> {

  TextEditingController strController = TextEditingController();
  String? strValue = "";

  @override
  void initState() {
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('String Value: $strValue'),
              verticalSpaceSmall,
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: strController,
                      decoration: InputDecoration(
                        labelText: 'Enter Value',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  horizontalSpaceSmall,
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        SharedPrefs.setString('strKey', strController.text);
                        loadValues();
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text('Save'),
                  ),
                  horizontalSpaceSmall,
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        SharedPrefs.remove('strKey');
                        loadValues();
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: Text('Delete'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  loadValues() async {
    strValue = await SharedPrefs.getString('strKey');
  }
}
