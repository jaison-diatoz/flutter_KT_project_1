import 'package:flutter/material.dart';
import 'package:kt_project/Application/counter_provider.dart';
import 'package:kt_project/Infrastructure/MoviesProvider.dart';
import 'package:provider/provider.dart';

import 'Presentation/Screen1/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
            create: (_) => CounterProvider()),
        ChangeNotifierProvider<MoviesProvider>(create: (_) => MoviesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
