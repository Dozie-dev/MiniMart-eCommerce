import 'package:flutter/material.dart';
import 'package:minimart_app/controllers/cart_controller.dart';
import 'package:minimart_app/view/nav_bar/btmnav_bar.dart';
import 'package:get/get.dart';
import 'package:minimart_app/view/pages/cart_page.dart';
import 'package:minimart_app/view/pages/notifications.dart';
import 'package:minimart_app/view/pages/product_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // My splashscreen delay
  await Future.delayed(Duration(seconds: 2));
  Get.put(CartController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BtmnavBar(),
      getPages: [
        GetPage(name: '/notifications', page: () => const NotificationsPage()),
        GetPage(name: '/product-details', page: () => ProductsDetails()),
        GetPage(name: '/cart', page: () => CartPage()),
      ],
    );
  }
}
