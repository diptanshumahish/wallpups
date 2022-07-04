import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<Map> images = List.generate(
      100000,
      (index) => {
            "id": index,
            "image":
                "https://source.unsplash.com/random/1080x1920/?wallpapers/$index"
          }).toList();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpup',
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme().apply()),
      home: const Home(),
      // routes: {

      // },
    );
  }
}
