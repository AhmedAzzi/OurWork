import 'package:my_medics/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';

class SuyroTab extends StatelessWidget {
  List onScreen = [
    ["ISOMOL", 'm', "1", Colors.blue, "assets/images/medicel/ctg1/mdc1.jpg"],
    ["MAXILAZE", 'm', "2", Colors.blue, "assets/images/medicel/ctg1/mdc2.png"],
    [
      "BRONCHOKOD",
      'm',
      "3",
      Colors.blue,
      "assets/images/medicel/ctg1/mdc3.png"
    ],
    [
      "Carbocistéine",
      "m",
      '4',
      Colors.blue,
      "assets/images/medicel/ctg1/mdc4.jpg"
    ],
    ["Advil", 'm', "5", Colors.blue, "assets/images/medicel/ctg1/mdc5.jpg"],
    ["Doliprane", "m", '6', Colors.blue, "assets/images/medicel/ctg1/mdc6.jpg"],
  ];

  SuyroTab({super.key});

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
