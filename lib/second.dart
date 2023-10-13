import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var numbers = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("${numbers.length}", style: TextStyle(fontSize: 22)),
          ), // Corrected interpolation syntax
          Expanded(
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child:
                      Text("${numbers[index]}", style: TextStyle(fontSize: 22)),
                ); // Corrected interpolation syntax
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numbers.add(numbers.last + 1);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
