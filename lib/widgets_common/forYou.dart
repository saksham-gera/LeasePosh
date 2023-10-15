import 'package:flutter/cupertino.dart';

import '../consts/consts.dart';
import 'filterSortBy.dart';

Widget ForYou(filterFunc,sortByFunc,screenHeight){
  return Container(
    alignment: AlignmentDirectional.bottomCenter,
    decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.black26,
          blurRadius: 5,
          offset: Offset(5,5),
        )],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(24.0))
    ),
    height: screenHeight*0.13,
    child: Padding(
      padding: EdgeInsets.only(top: 25.0,left: 8.0,bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("For You",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          FilterSortBy(filterFunc,sortByFunc),
        ],
      ),
    ),
  );
}