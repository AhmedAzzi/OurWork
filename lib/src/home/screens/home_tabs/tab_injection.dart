import 'package:MyMedice/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';


class InjectionTab extends StatelessWidget {
  List OnScreen = const [
    ["Morpuine",'m', "1", Colors.red, "assets/images/medicel/ctg3/mdc1.jpg"],
    ["ENOXAPARIN",'m', "2", Colors.red, "assets/images/medicel/ctg3/mdc2.jpg"],
    ["Clexane", 'm',"3", Colors.red, "assets/images/medicel/ctg3/mdc3.jpg"],
    ["Enoxaparina", "m",'4', Colors.red, "assets/images/medicel/ctg3/mdc4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: OnScreen.length,
      
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return MedicelModel(
          title: OnScreen[index][0],
          subTitle: OnScreen[index][1],
          dousage: OnScreen[index][2],
          cardColor: OnScreen[index][3],
          imageName: OnScreen[index][4],
        );
      },
    );
  }
}
