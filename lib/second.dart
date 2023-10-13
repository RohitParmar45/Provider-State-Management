import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/list_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (BuildContext context, NumbersListProvider numProviderModel,
          Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Second Page'), // Update the title here
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("${numProviderModel.numbers.length}",
                    style: TextStyle(fontSize: 22)),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numProviderModel.numbers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("${numProviderModel.numbers[index]}",
                          style: TextStyle(fontSize: 22)),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numProviderModel.add();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
