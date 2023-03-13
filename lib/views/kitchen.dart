import 'package:commit/constants/sharedPrefs.dart';
import 'package:flutter/material.dart';

class Kitchen extends StatefulWidget {
  const Kitchen({Key? key}) : super(key: key);

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {

  String? strValue = 'KOSONG';
  TextEditingController strController = TextEditingController();

  loadValues() async {
    strValue = await sharedPrefs.getString('nama') ?? 'No Value';
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(blurRadius: 4),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('String Value: $strValue'),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: strController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          strValue = strController.text;
                          sharedPrefs.setString('nama', strValue!);
                          loadValues();
                        });
                      },
                      child: Text('Save'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Delete'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
