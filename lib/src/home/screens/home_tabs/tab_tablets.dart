import 'package:MyMedice/src/home/models/medicel_model.dart';
import 'package:flutter/material.dart';


class TabletsTab extends StatelessWidget {
  
  List OnScreen = [
    
    ["Ivadine",'m', "1", Colors.green, "assets/images/medicel/ctg2/mdc1.jpg"],
    ["Carvideol",'m', "2", Colors.green, "assets/images/medicel/ctg2/mdc2.jpg"],
    ["Diltitab CD", 'm',"3", Colors.green, "assets/images/medicel/ctg2/mdc3.jpg"],
    ["Doliprane", "m",'4', Colors.green, "assets/images/medicel/ctg2/mdc4.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: OnScreen.length,
      
      padding: EdgeInsets.all(12),
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
