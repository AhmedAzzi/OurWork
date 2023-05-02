import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TBottomNavigationBar extends StatelessWidget {
  TBottomNavigationBar({super.key, this.onChanged});

  void Function(int)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
      child: GNav(
          onTabChange: onChanged,
          // backgroundColor: Colors.blue,
          tabBackgroundColor: Colors.grey.shade800,
          color: Colors.white,
          activeColor: Colors.white,
          padding: const EdgeInsets.all(16),
          tabs: [
            const GButton(
              // backgroundColor: Colors.blue[400],
              gap: 8,
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
                gap: 8,
                backgroundColor: Colors.blue[400],
                icon: Icons.location_on_outlined,
                text: 'Location'),
            GButton(
              gap: 8,
              icon: Icons.search,
              text: 'Search',
              backgroundColor: Colors.blue[400],
            ),
            GButton(
              gap: 8,
              icon: Icons.person,
              text: 'Profile',
              backgroundColor: Colors.blue[400],
            )
          ]),
    );
  }
}
