import 'package:flutter/material.dart';
import 'package:news_app/home_page/homepage.dart';
import 'package:news_app/news_page/newspage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int myIndex = 0;

  List myList = <Widget>[
    const HomePage(),
    const NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: myList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.pink,
        fixedColor: Colors.black,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feed,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.black,

            icon: Icon(
              Icons.save,
              // color: Colors.black,
            ),
            label: 'Save',
          ),
        ],
      ),
    );
  }
}
