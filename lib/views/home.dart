import 'package:flutter/material.dart';
import 'package:newsapp/Model/Newsart.dart';
import 'package:newsapp/controller/fetchnews.dart';
import 'package:newsapp/views/widgets/newscontainer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isloading=true;
  NewsArt? newsart; // Making it nullable to handle the loading state

  // ignore: non_constant_identifier_names
GetNews() async {
    newsart = await Fetchnews.fetchnews();
    setState(() {
      isloading=false;
    });
  }


  @override
  void initState() {
    super.initState();
    GetNews(); // Corrected the method name casing
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NEWS BITE",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        toolbarHeight: 34.0,
      ),
      body: newsart == null
          ? Center(child: CircularProgressIndicator())
          : PageView.builder(
              scrollDirection: Axis.vertical,
            
              onPageChanged: (value) {
                setState(() {
                  isloading=true;
                });
                GetNews();
              },
              itemBuilder: (context, index) {
                return NewsContainer(
                  imgurl: newsart!.imgurl, // Using the non-null assertion operator
                  newshead: newsart!.newshead,
                  newscnt: newsart!.newscnt,
                  data: newsart!.data,
                  newsurl: newsart!.newsurl,
                );
              },
            ),
    );
  }
}
