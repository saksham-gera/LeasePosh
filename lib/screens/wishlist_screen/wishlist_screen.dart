import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/consts.dart';
import '../../widgets_common/itemCard.dart';
import '../product_screen/product_screen.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = context.screenHeight;
    var screenWidth = context.screenWidth;

    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.only(
                      top: (0.10 * screenHeight), left: 15, right: 15),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Your Wishlist",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: screenHeight * 0.30),
                        itemBuilder: (context, index) {
                          return ItemCard(screenWidth: screenWidth);
                        })
                  ])))),
    );
  }
}
