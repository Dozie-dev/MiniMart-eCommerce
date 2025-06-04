import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/app_images.dart';
import 'package:minimart_app/utils/colors.dart';

class AppBar2 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar2({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.mainBackground,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, // Border color
            width: 0.3, // Thickness of the bottom border
          ),
        ),
      ),
      child: SafeArea(
        child: AppBar(
          backgroundColor: AppColors.mainBackground,
          leading: Image.asset(AppImages.logo, height: 70),

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'DELIVERY ADDRESS',
                style: GoogleFonts.ibmPlexSans(
                  textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Umuezike Road, Oyo State',
                style: GoogleFonts.ibmPlexSans(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Image.asset(AppIcons.notification, width: 24, height: 24),
              onPressed: () {
                Get.toNamed('/notifications');
              },
            ),
          ],
        ),
      ),
    );
  }
}
