import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/pages/utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(     
      debugShowCheckedModeBanner: false, 
        // home:HomePage(),
        themeMode:ThemeMode.light,

        theme:ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,  ),
              
              textTheme: Theme.of(context).textTheme,

          )


        ) ,

        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // ),
        
        initialRoute: '/home',
        routes: {
          "/": (context) =>LoginPage(),
          MyRoutes.homeRoute: (context) =>HomePage(),
          MyRoutes.loginRoute: (context) =>LoginPage(),
          // "/login": (context) =>LoginPage(),

        },

    );
    

  }
}

