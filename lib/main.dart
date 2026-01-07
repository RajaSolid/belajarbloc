import 'package:belajarbloc/Pages/bangundatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Blocs/bangundatar_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => BangunDatarBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bangun Datar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BangunDatarPage(),
    );
  }
}
