import 'package:flutter/material.dart';

import './home_page_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePageWidget());
  }
}