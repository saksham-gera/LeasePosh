import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../consts/consts.dart';

Widget CategoryStack(imProduct, productName , {height = 175.0 , width = 160.0 , paddingLeft = 20.0 , paddingTop = 15.0}) {
  return Padding(
    padding: EdgeInsets.only(left: paddingLeft,top: paddingTop),
    child: Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                  imProduct,
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
              "$productName",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ),
  );
}
