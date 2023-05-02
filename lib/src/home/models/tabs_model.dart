import 'package:flutter/material.dart';

class TabsModel extends StatelessWidget {
  final String icon;

  const TabsModel({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 100,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          icon,
          color: Colors.blue[600],
        ),
      ),
    );
  }
}
