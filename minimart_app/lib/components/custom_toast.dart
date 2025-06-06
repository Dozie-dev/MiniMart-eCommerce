import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/colors.dart';

class CustomToast {
  static void showSuccess() {
    BotToast.showCustomText(
      duration: Duration(seconds: 2),
      toastBuilder:
          (cancelFunc) => Stack(
            children:[ Container(
              height: 56, width: 335,
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(8),
              ),
              
            ),
             Positioned(
            left: 3,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x26000000),
                    offset: Offset(0, 16),
                    blurRadius: 24,
                    spreadRadius: 0,
                  ),
                ],
              ),
              height: 56,
              width: 335,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppIcons.checkcircle, width: 24, height: 24),
                  SizedBox(
                    width: 250,
                    child: Text(
                      'Item has been added to cart', style: GoogleFonts.ibmPlexSans(textStyle: TextStyle(
                      color: AppColors.greytext,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: AppColors.greyicon, size: 24),
                    onPressed: cancelFunc,
                  )
                ],
              ),
            ),
          ),
         ] ),
      onlyOne: true,
      crossPage: true,
      align: Alignment.topCenter,
    );
  }
}
