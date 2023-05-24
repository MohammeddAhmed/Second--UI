import 'package:flutter/material.dart';
import 'package:tt9_homework2/app/home_page.dart';
import 'package:tt9_homework2/app/search_page.dart';
import 'package:tt9_homework2/app/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home_page',
        //initialRoute: '/settings_page',
        //initialRoute: '/search_page',
        routes: {
          '/home_page' : (context) => const HomePage(),
          '/search_page' : (context) => const SearchPage(),
          '/settings_page' : (context) => const SettingsPage(),
        }
    );
  }
}
