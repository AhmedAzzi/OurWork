import 'package:flutter/material.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/core/screens/Drawer/notifications.dart';
import 'package:my_medics/src/core/screens/Drawer/settings.dart';
import 'package:my_medics/src/home/screens/home.dart';
import 'package:my_medics/src/map/screens/map.dart';
import 'package:my_medics/src/profile/screens/profile.dart';
import 'package:my_medics/src/search/screens/search.dart';
import 'package:my_medics/src/core/models/buttomnavigate.dart';

class Dachboard extends StatefulWidget {
  const Dachboard({Key? key}) : super(key: key);

  @override
  State<Dachboard> createState() => _DachboardState();
}

class _DachboardState extends State<Dachboard> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const Home(),
    const Profile(),
    const Notifications(),
    const SearchPage(),
    const TMap(),
    const Settings(),
  ];
  final List<String> titles = [
    tHome,
    tProfile,
    tNotifications,
    tSearch,
    tLocation,
    tSettings,
  ];

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(titles.elementAt(currentIndex)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "boukhoudmi rachid",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                "rachidbk912@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.deepPurple.shade100,
                child: const Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text(tHome,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              onTap: () {
                print(titles.indexOf(tHome));
                pages.elementAt(titles.indexOf(tHome));
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_box, color: Colors.white),
              title: const Text(tProfile,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              onTap: () {
                print(titles.indexOf(tProfile));
                onPageChanged(titles.indexOf(tProfile));
              },
            ),
            ListTile(
                leading:
                    const Icon(Icons.notifications_active, color: Colors.white),
                title: const Text(tNotifications,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                onTap: () {
                  print(titles.indexOf(tNotifications));
                  onPageChanged(titles.indexOf(tNotifications));
                }),
            ListTile(
              leading: const Icon(Icons.search, color: Colors.white),
              title: const Text(tSearch,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              onTap: () {
                print(titles.indexOf(tSearch));
                onPageChanged(titles.indexOf(tSearch));
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.white),
              title: const Text(tLocation,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              onTap: () {
                print(titles.indexOf(tLocation));
                onPageChanged(titles.indexOf(tLocation));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text(tSettings,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              onTap: () {
                print(titles.indexOf(tSettings));
                onPageChanged(titles.indexOf(tSettings));
              },
            ),
          ],
        ),
      ),
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: TBottomNavigationBar(
        onChanged: onPageChanged,
      ),
    );
  }
}
