import 'package:flutter/material.dart';
import 'package:newsapp/views/detail_view.dart';

// import 'package:cached_network_image/cached_network_image.dart';
// ignore: must_be_immutable
class NewsContainer extends StatelessWidget {
  String imgurl;
  String newshead;
  String data;
  String newsurl;
  String newscnt;
  NewsContainer(
      {super.key,
      required this.imgurl,
      required this.newshead,
      required this.data,
      required this.newsurl,
      required this.newscnt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context)
          .size
          .width, //if we need container to completely cover the page then we used media query
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network(
          //   imgurl,
          // height: 280,
          // width: MediaQuery.of(context).size.width,
          //   fit: BoxFit.cover,
          //   // color: Colors.blue,
          //   // width:   00
          // ),

          // CachedNetworkImage(
          //     imageUrl: imgurl,
          //     // placeholder: (context, url) => const CircularProgressIndicator(),
          //     errorWidget: (context, url, error) => const Icon(Icons.error),
          //   ),
          FadeInImage.assetNetwork(
              height: 330,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder: "assets/img/Screenshot 2024-06-08 214016.png",
              image: imgurl),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  // newshead.length>80? "${newshead.substring(0,80)}...":
                  newshead,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  data,
                  style: const TextStyle(fontSize: 15.0, color: Colors.black38),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  // newscnt.length > 500
                  //     ? "${newscnt.substring(0, 500)}..."
                  //     : //learning of if else also given:
                      "${newscnt.toString().substring(0, newscnt.length - 9)}..." //this is used to only take the limited part of the news:
                  ,
                  style: const TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailView(newsurl: newsurl)));
                    },
                    child: const Text(
                      "Read More",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
