import 'package:flutappe/pages/home_page.dart';
import 'package:flutappe/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.light,
         
        ),
       // initialRoute: "/home",//home page ke liye
        routes:{
          "/": (context) => LoginPage(),//agar initialroute hta de to login page khulega
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage()
        } ,
    );
  }
}
