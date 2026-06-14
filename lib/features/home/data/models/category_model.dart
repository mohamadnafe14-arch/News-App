import 'package:flutter/foundation.dart';

@immutable
class CategoryModel {
  final String name;
  final String image;

  const CategoryModel({required this.name, required this.image});
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(name: json['name'], image: json['image']);
  }

  Map<String, dynamic> toJson() => {'name': name, 'image': image};
}
