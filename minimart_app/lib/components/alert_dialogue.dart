import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/utils/colors.dart';

class PopupDialogue extends StatelessWidget {
  const PopupDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.whitecolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        "Order Placed!",
        style: GoogleFonts.ibmPlexSans(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColors.normalcolor,
          ),
        ),
      ),
      content: Text(
        "Your order has been Confirmed!",
        style: GoogleFonts.ibmPlexSans(),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Done", style: GoogleFonts.ibmPlexSans()),
        ),
      ],
    );
  }
}
