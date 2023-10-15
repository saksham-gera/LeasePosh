import 'package:flutter/cupertino.dart';
import 'package:leaseposh/consts/consts.dart';

Widget CartItem(value,Function() onChecked,imProduct,label,{picHeight = 150.0,picWidth = 120.0}){
  return Container(
    child: Row(
      children: [
        Checkbox(value: value, onChanged: onChecked()),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            height: picHeight,
            width: picWidth,
            child: Image.asset(
              imProduct,
              fit: BoxFit.fill,
            ).box.rounded.clip(Clip.antiAlias).make(),
          ),
        ),
        Container(
          height: picHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(label , style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Size: M"),
                  Text(", Pink")
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("⭐️4.5/5.0"),
                  Text("(82)")
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Count: 2"),
                ],
              ),
              Spacer(),
              Container(
                width: 200,
                child: Row(
                  children: [
                    Text("50% OFF" , style: TextStyle( color: Colors.green , fontWeight: FontWeight.bold,fontSize: 20),),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Rs. 5000",style: TextStyle(fontSize: 12 , decoration: TextDecoration.lineThrough)),
                        Text("Rs. 2500", style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}