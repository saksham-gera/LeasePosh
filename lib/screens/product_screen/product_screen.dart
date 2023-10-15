import 'package:leaseposh/consts/consts.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../widgets_common/addToCart.dart';
import '../../widgets_common/buyNow.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {

    late var screenWidth = context.screenWidth;

    return Scaffold(

        // bottomNavigationBar: Container(
        //   color: Colors.transparent,
        //   width: screenWidth,
        //   height: 100.0,
        //   child: Row(
        //     children: [
        //       AddToCart(screenWidth),
        //       BuyNow(screenWidth),
        //     ],
        //   ),
        // ),
        body: StickyHeader(
            header: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                  child: Image.asset(
                    icWishlist,
                    height: 50,
                    width: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                )
              ],
            ),
            content: 1000.heightBox));
  }
}
