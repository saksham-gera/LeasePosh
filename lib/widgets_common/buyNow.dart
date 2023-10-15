import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leaseposh/consts/colors.dart';

void buyNow() {
  print("Bought Just Now");
}

Widget BuyNow(screenWidth) {
  return Container(
    width: 0.48*screenWidth,
    height: 70,
    decoration: BoxDecoration(
        color: Colors.black,
      borderRadius: BorderRadius.all(Radius.circular(20.0))
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.black
      ),
        onPressed: buyNow,
        child: Text(
          " BUY NOW ",
          style: TextStyle(color: Colors.white,fontSize: 18),
        )),
  );
}
