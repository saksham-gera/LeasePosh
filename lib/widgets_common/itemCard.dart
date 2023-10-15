import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../consts/consts.dart';
import '../screens/product_screen/product_screen.dart';

Widget ItemCard({screenWidth = 500.0}) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            SizedBox(
              height: 200,
              width: screenWidth*0.43,
              child: Image.asset(
                imWomen,
                fit: BoxFit.fill,
              ).box.rounded.clip(Clip.antiAlias).make(),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey.withOpacity(0.6),
                ),
                height: 18,
                child: Text(
                  " ⭐️4.5/5 ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Siyaram", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Pink Lehanga",style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Rs. 5000",style: TextStyle(fontSize: 12 , decoration: TextDecoration.lineThrough)),
                    Text("Rs. 2500", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ).onTap(() {
      Get.to(() => ProductScreen());});
}


