
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier{
    WebViewController? webViewController;

    List Logos = [
      "assets/images/ajio.jpeg",
      "assets/images/myntra.jpeg",
      "assets/images/amazon.png",
      "assets/images/flipkart.png",
      "assets/images/jiomart.png",
      "assets/images/meesho.png",
      "assets/images/nykaa.png",
      "assets/images/shopsy.png",
  ];
  List Name = [
    "Ajio",
    "Myntra",
    "Amazon",
    "Flipkart",
    "JioMart",
    "Meesho",
    "Nykaa",
    "Shopsy",
  ];
  List urls = [
    "https://www.ajio.com/",
    "https://www.myntra.com/",
    "https://www.amazon.in/",
    "https://www.flipkart.com/",
    "https://www.jiomart.com/",
    "https://www.meesho.com/",
    "https://www.nykaa.com/",
    "https://www.shopsy.in/",

  ];

 void linkurl(int index)
 {
   webViewController = WebViewController();
   webViewController!.loadRequest(Uri.parse("${urls[index]}"));
 }
}