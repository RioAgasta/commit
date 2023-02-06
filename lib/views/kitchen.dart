import 'package:commit/constants/sharedPrefs.dart';
import 'package:flutter/material.dart';

import '../widgets/sidebar.dart';
import '../widgets/symmetricalSpace.dart';

class Kitchen extends StatefulWidget {
  const Kitchen({Key? key}) : super(key: key);

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {

  int itemCount = 1;

  void loadValues() async {
    itemCount = (await SharedPrefs.getInt('intValue'))!;
    setState(() {});
  }

  @override
  void initState() {
    loadValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kitchen'),
        actions: const [
          BackButton(),
        ],
      ),
      drawer: const Sidebar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        itemCount++;
                        SharedPrefs.setInt('intValue', itemCount);
                        loadValues();
                      });
                    },
                    child: const Text('Increase List'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    onPressed: (){
                      if(itemCount > 0){
                        itemCount--;
                        SharedPrefs.setInt('intValue', itemCount);
                        loadValues();
                      }
                    },
                    child: const Text('Decrease List'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: (){
                      itemCount = 1;
                      SharedPrefs.setInt('intValue', itemCount);
                      loadValues();
                    },
                    child: const Text('Reset List'),
                  ),
                ],
              ),
              verticalSpaceMedium,
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                physics: const ScrollPhysics(parent: null),
                shrinkWrap: true,
                itemCount: itemCount,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.blue,
                          Colors.blue.shade900,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
