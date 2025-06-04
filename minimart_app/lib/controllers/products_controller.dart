import 'package:get/get.dart';
import 'package:minimart_app/model/product_model.dart';
import 'package:minimart_app/utils/app_images.dart';

class ProductsController extends GetxController {
  var productsList =
      <ProductModel>[
        ProductModel(
          image: AppImages.iphone,
          name: 'Apple iPhone 16',
          price: 700.00,
          ram: '128GB',
          colour: 'Teal',
        ),
        ProductModel(
          image: AppImages.macbook,
          name: 'M4 Macbook Air 13"',
          price: 1000.00,
          ram: '256GB',
          colour: 'Sky blue',
        ),
        ProductModel(
          image: AppImages.pixel,
          name: 'Google Pixel 9A',
          price: 499.00,
          ram: '128GB',
          colour: 'Iris',
        ),
        ProductModel(
          image: AppImages.airpod,
          name: 'Apple Airpods 4',
          price: 129.00,
          ram: 'Active Noise Cancelation...',
          colour: '',
        ),
        ProductModel(
          image: AppImages.iphone2,
          name: 'Apple iPhone 17',
          price: 700.00,
          ram: '128GB',
          colour: 'Blue',
        ),
        ProductModel(
          image: AppImages.iphone3,
          name: 'Apple iPhone 168',
          price: 700.00,
          ram: '128GB',
          colour: 'Black',
        ),
      ].obs;
}
