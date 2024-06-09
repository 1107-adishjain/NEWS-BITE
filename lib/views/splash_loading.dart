import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsapp/views/home.dart';

// ignore: camel_case_types
class Loading_Page extends StatelessWidget {
  const Loading_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // color: Colors.blue,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage("assets/img/6f6c1538b050072b002dbc06bedaaf90.jpg"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SpinKitRipple(
            duration: Duration(seconds: 2),
            color: Colors.black,
            size: 150.0,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "NEWS BITE",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12.0,
          ),
          // const Text(
          //   "Welcome to NEWS BITE! Stay updated with the latest news from around the world,\n delivered instantly. Enjoy a seamless experience with breaking news,\n in-depth articles, and personalized content tailored to your interests.\n Thank you for choosing NEWS BITE—your source for reliable and timely information.",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          // ),
          const SizedBox(
            height: 36.0,
          ),
          // Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Homescreen()));
              },
              child: const Text("Proceed")),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
            "Created By Adish Jain",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ));
  }
}
