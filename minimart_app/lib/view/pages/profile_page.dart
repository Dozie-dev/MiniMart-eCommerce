import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/utils/colors.dart';
import 'package:minimart_app/view/app_bars/customappbar2.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,
      appBar: AppBar2(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 0.3),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_rounded, size: 15),
                ),

                Text(
                  'Profile',
                  style: GoogleFonts.ibmPlexSans(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text(
            'COMING SOON',
            style: GoogleFonts.ibmPlexSans(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.highlighticon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
