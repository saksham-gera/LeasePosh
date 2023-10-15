import 'package:flutter/cupertino.dart';

import '../consts/consts.dart';

Widget FilterSortBy(Function() filterFunc, Function() sortByFunc) {
  return Container(
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7.0 , right: 7.0),
          child: Container(
            alignment: Alignment.center,
            height: 25,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.grey.withOpacity(0.5),
            ),
            child: Text(
                "Filters",
                style: TextStyle(
                  fontSize: 15
                ),
            ),
          ).onTap(filterFunc),
        ),
        Padding(
          padding: const EdgeInsets.all(0.5),
          child: Container(
            alignment: Alignment.center,
            height: 25,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.grey.withOpacity(0.5),
            ),
            child: Text(" Sort By ",style: TextStyle(
                fontSize: 15
            ),),
          ).onTap(sortByFunc),
        )
      ],
    ),
  );
}
