import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_task/screens/ui/home/ui/home_screen.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      title: 'Movie Application',
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home: HomePage(),

    );

  }
}