import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/list_provider.dart';
import 'package:provider_statemanagement/second.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (BuildContext context, NumbersListProvider numProviderModel,
              Widget? child) =>
          Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("${numProviderModel.numbers.length}",
                  style: TextStyle(fontSize: 22)),
            ), // Corrected interpolation syntax
            Expanded(
              child: ListView.builder(
                itemCount: numProviderModel.numbers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("${numProviderModel.numbers[index]}",
                        style: TextStyle(fontSize: 22)),
                  ); // Corrected interpolation syntax
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                child: const Text(
                  "Second Page",
                  style: TextStyle(fontSize: 12),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              numProviderModel.numbers.add(numProviderModel.numbers.last + 1);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
