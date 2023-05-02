import 'package:flutter/material.dart';

class DachboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DachboardCategoriesModel(
      this.title, this.heading, this.subHeading, this.onPress);

  static List<DachboardCategoriesModel> list = [
    DachboardCategoriesModel('1', '', '', null),
    DachboardCategoriesModel('2', '', ' ', null),
    DachboardCategoriesModel('3', '', ' ', null),
    DachboardCategoriesModel('4', '', ' ', null),
    DachboardCategoriesModel('5', '', ' ', null),
  ];
}
