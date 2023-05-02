import 'package:flutter/material.dart';

class MedicelModel extends StatelessWidget {
  final String dci; //* DCI
  final String nomC; //* Nom comers
  final String dousage;
  final int qun;
  const MedicelModel({
    super.key,
    required this.dci,
    required this.nomC,
    required this.dousage,
    required this.qun,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        minRadius: 30,
        child: Image.asset(
          "assets/logo/medicine.png",
          height: 35,
          width: 35,
        ),
      ),
      title: Text(
        dci,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(nomC),
      trailing: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
    ;
  }
}



/**
 *   static List<MedicelModel> medicels = [
    MedicelModel('CETIRIZINE', 'ZYRTEC ', 8),
    MedicelModel('DEXCHLORPHENIRAMINE MALEATE', 'HISTAGAN ', 20),
    MedicelModel('LORATADINE', 'RESTAMINE ', 10),
  ];
 */