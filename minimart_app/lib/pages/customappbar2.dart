import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBar2 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar2({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, // Border color
            width: 0.3, // Thickness of the bottom border
          ),
        ),
      ),
      child: SafeArea(
        child: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset('assets/images/logo.png', height: 70),

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'DELIVERY ADDRESS',
                style: GoogleFonts.ibmPlexSans(
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF334155),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Umuezike Road, Oyo State',
                style: GoogleFonts.ibmPlexSans(
                  textStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF334155),
                  ),
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/icons/notification.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
