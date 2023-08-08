import 'package:flutter/material.dart';
import 'package:music_app/screens/search.dart';
import 'package:music_app/screens/yourlibrary.dart';

import 'home.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [const Home(), const Search(), const YourLibrary()];
  int currentTabIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex){
          currentTabIndex=currentIndex;
          setState(() {

          });
        },
        backgroundColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              label: 'Your Library'),
        ],
      ),
    );
  }
}
