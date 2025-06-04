import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimart_app/controllers/products_controller.dart';
import 'package:minimart_app/utils/colors.dart';
import 'package:minimart_app/view/app_bars/customappbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ProductsController productsController = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,

      /// AppBar --
      appBar: CustomAppBar(),

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
                  'Technology',
                  style: GoogleFonts.ibmPlexSans(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smartphones, Laptops & Assecories',
                      style: GoogleFonts.ibmPlexMono(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: productsController.productsList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 234,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 15,
                        ),
                        itemBuilder: (context, index) {
                          final products =
                              productsController.productsList[index];
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                '/product-details',
                                arguments: products,
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 162,
                                  height: 162,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.62),
                                  ),
                                  child: Image.asset(products.image),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  products.name,
                                  style: GoogleFonts.ibmPlexSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.normalcolor,
                                  ),
                                ),
                                Text(
                                  "${products.ram}|${products.colour}",
                                  style: GoogleFonts.ibmPlexSans(
                                    fontSize: 14,
                                    color: AppColors.normalcolor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '\$${products.price.toStringAsFixed(2)}',
                                  style: GoogleFonts.ibmPlexSans(
                                    color: AppColors.normalcolor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
