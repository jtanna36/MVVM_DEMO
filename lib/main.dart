import 'package:flutter/material.dart';
import 'package:mvvm_demo/Screen/HomePage.dart';
import 'package:mvvm_demo/ViewModel/PostViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>PostViewModel(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
