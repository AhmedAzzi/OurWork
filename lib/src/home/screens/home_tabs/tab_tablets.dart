import 'package:my_medics/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';

class TabletsTab extends StatelessWidget {
  List onScreen = [
    ["Ivadine", 'm', "1", Colors.green, "assets/images/medicel/ctg2/mdc1.jpg"],
    [
      "Carvideol",
      'm',
      "2",
      Colors.green,
      "assets/images/medicel/ctg2/mdc2.jpg"
    ],
    [
      "Diltitab CD",
      'm',
      "3",
      Colors.green,
      "assets/images/medicel/ctg2/mdc3.jpg"
    ],
    [
      "Doliprane",
      "m",
      '4',
      Colors.green,
      "assets/images/medicel/ctg2/mdc4.jpg"
    ],
  ];

  TabletsTab({super.key});

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
