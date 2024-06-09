// https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=cbdbe1a706b94211b75e5093c577a514

// now we will fetch data from this api key:
import 'package:http/http.dart';
import 'dart:convert';
// import 'dart:io';
import 'dart:math';
import 'package:newsapp/Model/Newsart.dart';

class Fetchnews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    // "espn-cric-info",
    "financial-post",
    "fox-news",
    // "fox-sports",
    "globo",
    // "google-news",
    "google-news-in",
    "medical-news-today",
    // "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    // "techcrunch",
    // "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  // now iss list  of sources me se random selection of source ke liye the code is:

// way to convert the data in json format to the map format such that it is clearly available
  static Future<NewsArt> fetchnews() async {
    final RAndom = new Random();
    var lists = sourcesId[RAndom.nextInt(sourcesId.length)];
    // print(lists);
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourcesId&apiKey=cbdbe1a706b94211b75e5093c577a514"));
    if (response.statusCode == 200) {
      Map bodyData = jsonDecode(response.body);
      List articles = bodyData["articles"];
      final Newrandom = new Random();
      var MyArticle = articles[Newrandom.nextInt(articles.length)];
      print(MyArticle["urlToImage"]);
      return NewsArt.Fromapitoapp(MyArticle);
    } else {
      throw Exception("Failed to Load News");
    }
    // print(bodyData);
  }
}
// // intially http package imported in pubsec.yaml:
// // /then class is created where a object is called with async function if it takes time to fetch data:
// // we store the data of api in an response and then we decode the json data to map and store to variable:
// // // 
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:math';
// import 'dart:ui';
// import 'package:newsapp/model/newsart.dart';

// class Fetchnews {
//   static List sourcesId = [
//     "abc-news",
//     "bbc-news",
//     "bbc-sport",
//     "business-insider",
//     "engadget",
//     "entertainment-weekly",
//     "espn",
//     "espn-cric-info",
//     "financial-post",
//     "fox-news",
//     "fox-sports",
//     "globo",
//     "google-news",
//     "google-news-in",
//     "medical-news-today",
//     "national-geographic",
//     "news24",
//     "new-scientist",
//     "new-york-magazine",
//     "next-big-future",
//     "techcrunch",
//     "techradar",
//     "the-hindu",
//     "the-wall-street-journal",
//     "the-washington-times",
//     "time",
//     "usa-today",
//   ];

//   static Future<NewsArt> fetchnews() async {
//     final random = Random();
//     var source = sourcesId[random.nextInt(sourcesId.length)];
//     print(source);
    
//     final response = await http.get(Uri.parse(
//         "https://newsapi.org/v2/top-headlines?sources=$source&apiKey=cbdbe1a706b94211b75e5093c577a514"));

//     if (response.statusCode == 200) {
//       Map bodyData = jsonDecode(response.body);
//       List articles = bodyData["articles"];
//       var randomArticle = articles[random.nextInt(articles.length)];
//       print(randomArticle["urlToImage"]);
//       return NewsArt.Fromapitoapp(randomArticle);
//     } else {
//       throw Exception('Failed to load news');
//     }
//   }
// }


// // update kr fetch news ko