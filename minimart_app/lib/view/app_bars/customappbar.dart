import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/app_images.dart';
import 'package:minimart_app/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.mainBackground,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Colors.black, width: 0.3)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// First row
                Row(
                  children: [
                    Image.asset(AppImages.logo, height: 60),

                    SizedBox(width: 8),

                    Expanded(
                      child: Column(
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

                          SizedBox(height: 5),

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
                    ),
                    const SizedBox(width: 12),
                    IconButton(
                      icon: Image.asset(
                        AppIcons.notification,
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {
                        Get.toNamed('/notifications');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 2),

                /// TextField
                SizedBox(
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      prefixIcon: Image.asset(AppIcons.search),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.highlighticon),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.normalcolor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
