import 'package:commit/constants/sharedPrefs.dart';
import 'package:commit/widgets/symmetricalSpace.dart';
import 'package:flutter/material.dart';

class Basement extends StatefulWidget {
  const Basement({Key? key}) : super(key: key);

  @override
  State<Basement> createState() => _BasementState();
}

class _BasementState extends State<Basement> {
  TextEditingController strController = TextEditingController();
  String? strValue;
  late var ambilData;

  void loadValues() async {
    strValue = await SharedPrefs.getString('strValue') ?? "No Value";
    setState(() {});
  }

  Future<String?> getData() async {
    await Future.delayed(Duration(seconds: 3));

    return 'Get Data Done';
  }

  @override
  void initState() {
    loadValues();
    super.initState();
    ambilData = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
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
                          decoration: const InputDecoration(
                            labelText: 'Enter Value',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      horizontalSpaceSmall,
                      ElevatedButton(
                        onPressed: () {
                          strValue = strController.text;
                          SharedPrefs.setString('strValue', strValue!);
                          loadValues();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        child: const Text('Save'),
                      ),
                      horizontalSpaceSmall,
                      ElevatedButton(
                        onPressed: () {
                          SharedPrefs.remove('strValue');
                          loadValues();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder(
                      future: ambilData,
                      builder: (context, snapshot){
                        if(snapshot.connectionState == ConnectionState.done){
                          return Text('Success');
                        }
                        return CircularProgressIndicator();
                      },
                    ),
                    verticalSpaceMedium,
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ambilData = getData();
                        });
                      },
                      child: Text('Reload'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
