import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/controllers/btmnav_controller.dart';
import 'package:minimart_app/controllers/cart_controller.dart';
import 'package:minimart_app/model/product_model.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/colors.dart';
import 'package:minimart_app/view/app_bars/customappbar2.dart';

class ProductsDetails extends StatelessWidget {
  ProductsDetails({super.key});
  final ProductModel products = Get.arguments;
  final CartController cartController = Get.find<CartController>();
  final navController = Get.find<BtmnavController>();

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
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios_rounded, size: 15),
                ),

                Text(
                  'Go Back',
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

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 331.6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.containerBackground,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(products.image),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Obx(
                            () => GestureDetector(
                              onTap: () {
                                products.isFavorite.toggle();
                              },
                              child: Image.asset(
                                products.isFavorite.value
                                    ? AppIcons.clickedfav
                                    : AppIcons.unclickedfav,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "${products.name} ${products.ram}|${products.colour}",
                      style: GoogleFonts.ibmPlexSans(
                        textStyle: TextStyle(
                          color: AppColors.normalcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      '\$${products.price.toStringAsFixed(2)}',
                      style: GoogleFonts.ibmPlexSans(
                        color: AppColors.normalcolor,
                        fontSize: 32.75,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(
                      'About this item',
                      style: GoogleFonts.ibmPlexSans(
                        textStyle: TextStyle(
                          color: AppColors.detailsColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    Text(
                      "\u2022 This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.\n\u2022 There will be no visible cosmetic imperfections when held at an arm’s length. There will be no visible cosmetic imperfections when held at an arm’s length.\n\u2022 This product will have a battery which exceeds 80% capacity relative to new. \n\u2022 This product will have a battery which exceeds 80% capacity relative to new.",
                      style: GoogleFonts.ibmPlexSans(
                        textStyle: TextStyle(
                          color: AppColors.detailsColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 94,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(color: AppColors.whitecolor),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // final CartController cartController =
                //     Get.find<CartController>();
                cartController.addCartItem(products);
              },
              child: Container(
                height: 40,
                width: 343,
                decoration: BoxDecoration(
                  color: AppColors.highlighticon,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Add to Cart',
                    style: GoogleFonts.ibmPlexSans(
                      textStyle: TextStyle(
                        color: AppColors.whitecolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Spacer(),
          ],
        ),
      ),
    );
  }
}
