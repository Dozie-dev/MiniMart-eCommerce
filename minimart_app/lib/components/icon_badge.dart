import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;
import 'package:minimart_app/controllers/cart_controller.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/colors.dart';

class CartBadgeIcon extends StatelessWidget {
  final String assetPath;
  final bool isSelected;

  CartBadgeIcon({super.key, required this.assetPath, required this.isSelected});

  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final count = cartController.totalQuantity;

      Widget iconWidget = Image.asset(
        AppIcons.cart,
        width: 24,
        height: 24,
        color: isSelected ? AppColors.whitecolor : AppColors.normalicon,
      );

      if (isSelected) {
        iconWidget = Container(
          alignment: Alignment.center,
          height: 32,
          width: 56,
          decoration: BoxDecoration(
            color: AppColors.highlighticon,
            borderRadius: BorderRadius.circular(16),
          ),
          child: iconWidget,
        );
      }

      return badges.Badge(
        showBadge: count > 0,
        position: badges.BadgePosition.topEnd(top: -6, end: -6),
        badgeContent: Text(
          count.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        child: iconWidget,
      );
    });
  }
}
