import 'package:my_medics/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';

class PomadTab extends StatelessWidget {
  List onScreen = [
    [
      "Bepanthen",
      'm',
      "1",
      Colors.amber,
      "assets/images/medicel/ctg5/mdc1.jpg"
    ],
    ["Douce", 'm', "2", Colors.amber, "assets/images/medicel/ctg5/mdc2.jpg"],
    ["Orivrry", 'm', "3", Colors.amber, "assets/images/medicel/ctg5/mdc3.jpg"],
    ["Neomycin", "m", '4', Colors.amber, "assets/images/medicel/ctg5/mdc4.jpg"],
  ];

  PomadTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: onScreen.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return MedicelModel(
          title: onScreen[index][0],
          subTitle: onScreen[index][1],
          dousage: onScreen[index][2],
          cardColor: onScreen[index][3],
          imageName: onScreen[index][4],
        );
      },
    );
  }
}
