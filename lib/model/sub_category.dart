import 'package:flutter/material.dart';
import 'package:roman/model/category.dart';
import 'package:roman/model/category_part.dart';

class SubCategory extends Category {
  List<CategoryPart> parts;
  double price;
  //WeightUnits unit;
  int amount;
  SubCategory({
    this.parts = const [],
    this.price = 0.0,
   // this.unit = WeightUnits.Lb,
    this.amount = 0,
    String name,
    String icon,
    Color color,
    String imgName,
  }): super(
      name: name,
      icon: icon,
      color: color,
      imgName: imgName
  );





  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
        amount: 0,
       // unit: WeightUnits.Lb,
        name: json['name'],
        imgName: json['imgName'],
        color: Color(int.parse('0xFF' + json['color'])),
        icon: json['icon'],
        price: double.parse(json['price']),
        //parts: CategoryPart.fromJsonArray(json['parts'])
    );
  }

  static List<SubCategory> fromJsonArray(List<dynamic> jsonArray) {
    List<SubCategory> subCategoriesFromJson = [];

    jsonArray.forEach((jsonData) {
      subCategoriesFromJson.add(SubCategory.fromJson(jsonData));
    });

    return subCategoriesFromJson;
  }




}
