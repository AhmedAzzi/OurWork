import 'package:MyMedice/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';


class PomadTab extends StatelessWidget {
  
  List OnScreen = [
    
    ["Bepanthen",'m', "1", Colors.amber, "assets/images/medicel/ctg5/mdc1.jpg"],
    ["Douce",'m', "2", Colors.amber, "assets/images/medicel/ctg5/mdc2.jpg"],
    ["Orivrry", 'm',"3", Colors.amber, "assets/images/medicel/ctg5/mdc3.jpg"],
    ["Neomycin", "m",'4', Colors.amber, "assets/images/medicel/ctg5/mdc4.jpg"],
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
