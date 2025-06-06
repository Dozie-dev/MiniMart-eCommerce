import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/components/alert_dialogue.dart';
import 'package:minimart_app/controllers/cart_controller.dart';
import 'package:minimart_app/utils/app_icons.dart';
import 'package:minimart_app/utils/colors.dart';
import 'package:minimart_app/view/app_bars/customappbar2.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final cartController = Get.find<CartController>();

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
                  'Your Cart',
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                children: [
                  Obx(() {
                    final items = cartController.cartItems.entries.toList();

                    if (items.isEmpty) {
                      return Center(
                        child: Text(
                          "Your cart is empty.",
                          style: GoogleFonts.ibmPlexSans(
                            textStyle: TextStyle(
                              color: AppColors.highlighticon,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      );
                    }

                    return Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final products = items[index].key;
                            final quantity = items[index].value;

                            return Container(
                              width: double.infinity,
                              height: 132,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.containerBackground,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      products.image,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${products.name} ${products.ram}|${products.colour}",
                                          style: GoogleFonts.ibmPlexSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: (20 / 12),
                                              color: AppColors.textColor,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "\$${products.price.toStringAsFixed(2)}",
                                          style: GoogleFonts.ibmPlexSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                              height: (32 / 17),
                                              color: AppColors.textColor,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "In stock",
                                          style: GoogleFonts.ibmPlexSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: (16 / 12),
                                              color: AppColors.greenColor,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap:
                                                      () => cartController
                                                          .removeCartItem(
                                                            products,
                                                          ),

                                                  child: CircleAvatar(
                                                    radius: 18,
                                                    backgroundColor:
                                                        AppColors.greyiconbg,
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.remove,
                                                        color:
                                                            AppColors.greyicon,
                                                        size: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 25),
                                                Text(
                                                  quantity.toString(),
                                                  style:
                                                      GoogleFonts.ibmPlexSans(
                                                        textStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          height: (20 / 12),
                                                          color:
                                                              AppColors
                                                                  .greytext,
                                                        ),
                                                      ),
                                                ),
                                                SizedBox(width: 25),
                                                GestureDetector(
                                                  onTap:
                                                      () => cartController
                                                          .addCartItem(
                                                            products,
                                                          ),
                                                  child: CircleAvatar(
                                                    radius: 18,
                                                    backgroundColor:
                                                        AppColors.whitecolor,
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.add,
                                                        color:
                                                            AppColors.greyicon,
                                                        size: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            GestureDetector(
                                              onTap:
                                                  () => cartController
                                                      .deleteCartItem(products),
                                              child: CircleAvatar(
                                                radius: 18,
                                                backgroundColor:
                                                    AppColors.whitecolor,
                                                child: Center(
                                                  child: Image.asset(
                                                    AppIcons.delete,
                                                    width: 19,
                                                    height: 19,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Info',
                              style: GoogleFonts.ibmPlexSans(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.normalcolor,
                                ),
                              ),
                            ),

                            SizedBox(height: 10),
                            priceRow('Subtotal', cartController.subtotal),
                            SizedBox(height: 10),
                            priceRow('Shipping', cartController.deliveryFee),
                            SizedBox(height: 10),
                            priceRow(
                              'Total',
                              cartController.total,
                              isBold: true,
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Obx(() {
        if (cartController.cartItems.isEmpty) return SizedBox.shrink();

        return Container(
          height: 94,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(color: AppColors.whitecolor),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  if (cartController.cartItems.isNotEmpty) {
                    Get.dialog(const PopupDialogue());
                    cartController.clearCart();
                  }
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
                      "Checkout(\$${cartController.total})",
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
        );
      }),
    );
  }
}

priceRow(String label, double value, {bool isBold = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: GoogleFonts.ibmPlexSans(
          textStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.normalcolor,
          ),
        ),
      ),
      Text(
        "\$${value.toStringAsFixed(2)}",
        style: GoogleFonts.ibmPlexSans(
          textStyle: TextStyle(
            fontSize: isBold ? 14 : 12,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
            color: AppColors.normalcolor,
          ),
        ),
      ),
    ],
  );
}
