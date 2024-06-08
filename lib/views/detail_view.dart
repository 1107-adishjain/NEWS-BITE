import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// ignore: camel_case_types
// this page will redirect us to the differnt page on choosing the read more button:

// ignore: must_be_immutable
class DetailView extends StatefulWidget {
  String newsurl;
  DetailView({super.key, required this.newsurl});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      widget.newsurl = widget.newsurl.contains("http:")
          ? widget.newsurl.replaceAll("http:", "https:")
          : widget.newsurl;
    });
  }

  final Completer<WebViewController> controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
            initialUrl: widget.newsurl,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              setState(() {
                controller.complete(webViewController);
              });
            }));
  }
}
