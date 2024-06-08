import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// ignore: camel_case_types
class Loading_Page extends StatelessWidget {
  const Loading_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SpinKitRotatingCircle(
          color: Colors.black,
          size: 50.0,
        ),
        Text("News Bite"),
      ],
    ));
  }
}
