// this will act as data model:
// idhar frontend ko jo chaiye bakcend se wo denge:
// import 'package:newsapp/Model/Newsart.dart';

class NewsArt {
  String imgurl;
  String newshead;
  String data;
  String newsurl;
  String newscnt;

  // constructor and required is the keyword which say that the string created is required:
  // all the string var created are required:

  // constructor object calling me help krta hai:

  NewsArt({
    required this.imgurl,
    required this.newshead,
    required this.data,
    required this.newsurl,
    required this.newscnt,
  });
// backend se data ko frontend me bhejne ke liye kuch process chaiye wo yeh method krke dega:

  // ignore: non_constant_identifier_names
  static NewsArt Fromapitoapp(Map<String, dynamic> article) {
    return NewsArt(
        imgurl: article["urlToImage"] ??
            "assets/img/Screenshot 2024-06-08 214016.png",
        newshead: article["title"] ??
            "Error: Failed to load data. This issue might be due to a variety of reasons. Firstly, please check your internet connection to ensure it is stable and working correctly. If your connection is fine, the problem could be on our end, possibly due to server issues or maintenance activities. Additionally, it could be a result of incorrect configurations or corrupted data files.",
        data: article["description"] ??
            "Error Fail to Load Data:Error: Failed to load data. This issue might be due to a variety of reasons. Firstly, please check your internet connection to ensure it is stable and working correctly. If your connection is fine, the problem could be on our end, possibly due to server issues or maintenance activities. Additionally, it could be a result of incorrect configurations or corrupted data files.",
        newsurl: article["url"] ??
            "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
        newscnt: article["content"] ??
            "Error Fail to Load Data:Error: Failed to load data. This issue might be due to a variety of reasons. Firstly, please check your internet connection to ensure it is stable and working correctly. If your connection is fine, the problem could be on our end, possibly due to server issues or maintenance activities. Additionally, it could be a result of incorrect configurations or corrupted data files.");
  }
}
