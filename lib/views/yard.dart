import 'package:commit/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import '../widgets/symmetricalSpace.dart';

class Yard extends StatefulWidget {
  const Yard({Key? key}) : super(key: key);

  @override
  State<Yard> createState() => _YardState();
}

class _YardState extends State<Yard> {
  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    print('get data done');
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Yard'),
        actions: const [
          BackButton(),
        ],
      ),
      drawer: const Sidebar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpaceMedium,
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('Reload'),
            ),
            verticalSpaceLarge,
            Center(
              child: FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: snapshot.connectionState == ConnectionState.done ? [Colors.red, Colors.amber] : [Colors.grey, Colors.grey],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
