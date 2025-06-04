import 'package:get/get.dart';

class ProductModel {
  final String image;
  final String name;
  final double price;
  final String ram;
  final String colour;
  RxBool isFavorite = false.obs;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.ram,
    required this.colour,
  });
}
