import 'package:flutter/material.dart';
import 'package:ticketbooking/screens/bottom_bar.dart';
import 'package:ticketbooking/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme(),
      home: BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
