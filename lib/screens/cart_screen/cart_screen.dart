import 'package:leaseposh/widgets_common/cartItem.dart';

import '../../consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var value = true;
    var screenHeight = context.screenHeight;
    var screenWidth = context.screenWidth;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          width: 150,
          margin: EdgeInsets.only(right: screenWidth * 0.040),
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            splashColor: Colors.white54,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {},
            child: const Text(
              "RENT NOW",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Stack(children: [
          SingleChildScrollView(
              child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                  top: (0.10 * screenHeight), left: 15, right: 15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Cart",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        border: Border.fromBorderSide(BorderSide(width: 1.0))),
                    child: Column(
                      children: [
                        CartItem(value, () {}, imWomen, "Adidas Galaxy 6"),
                        CartItem(value, () {}, imBoy, "Adidas Galaxy 6"),
                        CartItem(value, () {}, imMen, "Adidas Galaxy 6"),
                        CartItem(value, () {}, imBoy, "Adidas Galaxy 6"),
                        CartItem(value, () {}, imBoy, "Adidas Galaxy 6"),
                        CartItem(value, () {}, imBoy, "Adidas Galaxy 6"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          border: Border.fromBorderSide(BorderSide(width: 1.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(children: [Text("Bill Details" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)],),
                            Row(children: [Text("Price(6 Items)" , style: TextStyle(fontSize: 16,)),Spacer(),Text("  Rs. 30000" , style: TextStyle(fontSize: 16,))],),
                            Row(children: [Text("Total Discount" , style: TextStyle(fontSize: 16,)),Spacer(),Text("- Rs. 15000" , style: TextStyle(fontSize: 16,))],),
                            Row(children: [Text("Delivery Charges" , style: TextStyle(fontSize: 16,)),Spacer(),Text("FREE Delivery",style: TextStyle(color: Colors.green,fontSize: 16),)],),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              decoration: BoxDecoration(
                                border: Border.symmetric( horizontal: BorderSide(width: 1.0))
                              ),
                              child: Row(children: [Text("Total Amount" , style: TextStyle(fontSize: 18,)),Spacer(),Text("  Rs. 15000" , style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))],),
                            ),
                            Row(children: [Text("Total Savings"  , style: TextStyle(fontSize: 16,)),Spacer(),Text("Rs. 15000",style: TextStyle(color: Colors.green , fontSize: 16),)],),
                          ],
                        ),
                      ),
                    ),
                  ),
                  200.heightBox
                ],
              ),
            ),
          )),
          // TopBar(context.screenWidth, screenHeight),
        ]),
      ),
    );
  }
}
