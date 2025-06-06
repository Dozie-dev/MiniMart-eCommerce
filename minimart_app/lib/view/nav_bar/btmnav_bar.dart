import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/components/icon_badge.dart';
import 'package:minimart_app/controllers/btmnav_controller.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/colors.dart';
import 'package:minimart_app/view/pages/cart_page.dart';
import 'package:minimart_app/view/pages/favorites.dart';
import 'package:minimart_app/view/pages/homepage.dart';
import 'package:minimart_app/view/pages/profile_page.dart';

class BtmnavBar extends StatelessWidget {
  BtmnavBar({super.key});

  final BtmnavController btmnavController = Get.put(BtmnavController());

  final List<Widget> pages = [
    Homepage(),
    CartPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  final List<String> labels = ["Home", "Cart", "Favorites", "Profile"];
  final List<String> icons = [
    AppIcons.home,
    AppIcons.cart,
    AppIcons.favorite,
    AppIcons.profile,
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[btmnavController.currentIndex.value],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: SizedBox(
            height: 90,
            child: BottomNavigationBar(
              currentIndex: btmnavController.currentIndex.value,
              onTap: btmnavController.changeTabIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 8,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              selectedItemColor: AppColors.highlighticon,
              unselectedItemColor: AppColors.normalicon,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: List.generate(icons.length, (index) {
                final isSelected = btmnavController.currentIndex.value == index;

                Widget iconWidget;

                if (index == 1) {
                  // Called the carticon badge
                  iconWidget = CartBadgeIcon(
                    assetPath: icons[index],
                    isSelected: isSelected,
                  );
                } else {
                  // Normal icons
                  iconWidget =
                      isSelected
                          ? Container(
                            alignment: Alignment.center,
                            height: 32,
                            width: 56,
                            decoration: BoxDecoration(
                              color: AppColors.highlighticon,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              icons[index],
                              width: 24,
                              height: 24,
                              color: AppColors.whitecolor,
                            ),
                          )
                          : Image.asset(
                            icons[index],
                            width: 24,
                            height: 24,
                            color: AppColors.normalicon,
                          );
                }

                return BottomNavigationBarItem(
                  label: '',
                  icon: Column(
                    children: [
                      iconWidget,
                      const SizedBox(height: 4),
                      // Label
                      Text(
                        labels[index],
                        style: GoogleFonts.ibmPlexSans(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.normalicon,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
