import 'package:flutter/material.dart';
import 'package:commit/data/shared_prefs.dart';
import '../widgets/symmetricalSpace.dart';

class Kitchen extends StatefulWidget {
  const Kitchen({Key? key}) : super(key: key);

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {

  int itemCount = 1;

  void loadValues() async {
    itemCount = (await SharedPrefs().getInt('intValue'))!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadValues();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kitchen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        itemCount++;
                        SharedPrefs().setInt('intValue', itemCount);
                        loadValues();
                      });
                    },
                    child: Text('Increase List'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    onPressed: (){},
                    child: Text('Decrease List'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: (){},
                    child: Text('Reset List'),
                  ),
                ],
              ),
              verticalSpaceMedium,
              GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                physics: ScrollPhysics(parent: null),
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
