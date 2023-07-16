import 'package:flutter/material.dart';
import 'package:kt_project/Infrastructure/MoviesProvider.dart';
import 'package:kt_project/Presentation/Screen2/second_screen.dart';
import 'package:provider/provider.dart';

import '../../Application/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MoviesProvider>(context, listen: false).fetchMovieDetails();
    final screenSize = MediaQuery.of(context).size;
    return Consumer<CounterProvider>(builder: (context, value, child) {
      return Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
            title: const Text('Movies'),
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
              // ))
              Center(
                child: Text(
                  '${value.counter}',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ElevatedButton(onPressed: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SecondScreen()),
              );
              }, child: const Text("Go to screen to"))
            ],
          ));
    });
  }
}
