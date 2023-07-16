import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kt_project/Application/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = 0;

    return Consumer<CounterProvider>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Screen two'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.changeCount();
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            //     child: Text(
            //   '${value.counter}',
            //   style: const TextStyle(fontSize: 20),
            // )),
            Center(
              child: Text(
                '${value.counter}',
                style: const TextStyle(fontSize: 20,color: Colors.black),
              ),
            )
          ],
        ),
      );
    });
  }
}
