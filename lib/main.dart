import 'package:flutter/material.dart';
import 'package:zwigato/pages/cart_page.dart';
import 'package:zwigato/pages/home_page.dart';
import 'package:zwigato/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Zwigato",
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
     ),
     routes: {
      "/":(context) => HomePage(),
      "cartPage":(context) => CartPage(),
      "itemPage":(context) => ItemPage(),
     },
     
    );
  }
}

