import 'package:my_medics/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';

class DropsTab extends StatelessWidget {
  List onScreen = [
    ["GAAP", 'm', "1", Colors.brown, "assets/images/medicel/ctg4/mdc1.jpg"],
    ["imot", 'm', "2", Colors.brown, "assets/images/medicel/ctg4/mdc2.jpg"],
    [
      "Trazidex Ape",
      'm',
      "3",
      Colors.brown,
      "assets/images/medicel/ctg4/mdc3.jpg"
    ],
    ["Miticel", "m", '4', Colors.brown, "assets/images/medicel/ctg4/mdc4.jpg"],
  ];

  DropsTab({super.key});

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
