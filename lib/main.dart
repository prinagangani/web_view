
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view/screens/home/provider/home_provider.dart';
import 'package:web_view/screens/home/view/home_view.dart';
import 'package:web_view/screens/web/view/web_view.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'webpage':(context) => WebScreen(),
        },
      ),
    ),
  );
}
