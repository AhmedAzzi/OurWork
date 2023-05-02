import 'package:MyMedice/src/core/models/buttomnavigate.dart';
import 'package:MyMedice/src/home/screens/home.dart';
import 'package:MyMedice/src/map/screens/map.dart';
import 'package:MyMedice/src/profile/screens/profile.dart';
import 'package:MyMedice/src/search/screens/search.dart';
import 'package:flutter/material.dart';

class Dachboard extends StatefulWidget {
  const Dachboard({super.key});

  @override
  State<Dachboard> createState() => _DachboardState();
}

class _DachboardState extends State<Dachboard> {
  int i = 0;
  void pageSwaping(int index) {
    setState(() {
      i = index;
    });
  }

  //* Pages
  //List pages = ["Home Page", "Search Page", "Parametres Page"];
  List<Widget> pages = [Home(), TMap(), SearchPage(), Profile()];

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: TBottomNavigationBar(
          onChanged: (index) => pageSwaping(index),
        ),
        body: SafeArea(
          child: pages.elementAt(i),
        ),
      ),
    );
  }
}
