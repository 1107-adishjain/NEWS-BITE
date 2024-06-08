

import 'package:flutter/material.dart';
import 'package:newsapp/views/home.dart';
// import 'package:newsapp/views/splash_loading.dart';
void main()
{
  runApp(const NewsApp());
}
class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  // loadata()
  // {
  //   Future.delayed(const Duration(seconds: 3),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Homescreen()));
  //   });
  // }
  // @override
  // void initState() {
  //   loadata();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(), //yeh loading page ke pass jayega and then loading page route kara dega: homescreen me
      // theme: ThemeData(),
      title: 'News Bite',
      
    );
  }
}