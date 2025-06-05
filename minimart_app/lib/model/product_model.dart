import 'package:get/get.dart';

class ProductModel {
  final String id;
  final String image;
  final String name;
  final double price;
  final String ram;
  final String colour;
  RxBool isFavorite = false.obs;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.ram,
    required this.colour,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
