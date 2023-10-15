import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void addToCart() {
  print("Added To Cart");
}

Widget AddToCart(screenWidth) {
  return Padding(
    padding: EdgeInsets.all((0.04/3)*screenWidth),
    child: Container(
      width: 0.48*screenWidth,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.black
          ),
          onPressed: addToCart,
          child: Text(" ADD TO CART ", style: TextStyle(color: Colors.white,fontSize: 18))),
    ),
  );
}
