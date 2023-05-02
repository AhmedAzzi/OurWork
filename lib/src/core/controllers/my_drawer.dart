import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_medics/src/constants/text_strings.dart';
import 'package:my_medics/src/home/screens/home.dart';
import 'package:my_medics/src/map/screens/map.dart';
import 'package:my_medics/src/profile/screens/profile.dart';
import 'package:my_medics/src/search/screens/search.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Get.to(() => const Home());
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box, color: Colors.white),
            title: const Text(tProfile,
                style: TextStyle(color: Colors.white, fontSize: 18)),
            onTap: () {
              Get.to(() => const Profile());
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.notifications_active, color: Colors.white),
            title: const Text(tNotifications,
                style: TextStyle(color: Colors.white, fontSize: 18)),
            onTap: () => print("object"),
          ),
          ListTile(
            leading: const Icon(Icons.search, color: Colors.white),
            title: const Text(tSearch,
                style: TextStyle(color: Colors.white, fontSize: 18)),
            onTap: () {
              Get.to(() => const SearchPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on, color: Colors.white),
            title: const Text(tLocation,
                style: TextStyle(color: Colors.white, fontSize: 18)),
            onTap: () {
              Get.to(() => const TMap());
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text(tSettings,
                style: TextStyle(color: Colors.white, fontSize: 18)),
            onTap: () => print("object"),
          ),
        ],
      ),
    );
  }
}
