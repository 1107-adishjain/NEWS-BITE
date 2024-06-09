// import 'package:flutter/material.dart';
// import 'package:newsapp/views/home.dart';
// import 'package:newsapp/views/splash_loading.dart';
// // import 'package:newsapp/views/splash_loading.dart';
// void main()
// {
//   runApp(const NewsApp());
// }
// class NewsApp extends StatefulWidget {
//   const NewsApp({super.key});

//   @override
//   State<NewsApp> createState() => _NewsAppState();
// }

// class _NewsAppState extends State<NewsApp> {
//  bool showingsplash=true;
//    bool showingSplash = true;
//   // ignore: non_constant_identifier_names
//   LoadHome() {
//     Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         showingSplash = false;
//       });
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     LoadHome();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: showingsplash?Loading_Page():Homescreen(), //yeh loading page ke pass jayega and then loading page route kara dega: homescreen me
//       // theme: ThemeData(),
//       title: 'News Bite',

//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:news_snack/view/home.dart';
// import 'package:news_snack/view/spalsh.dart';
import 'package:newsapp/views/home.dart';
import 'package:newsapp/views/splash_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash = true;
  // ignore: non_constant_identifier_names
  LoadHome() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Bite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: showingSplash ? const Loading_Page() : const Homescreen(),
      home: const Loading_Page(),
    );
  }
}
