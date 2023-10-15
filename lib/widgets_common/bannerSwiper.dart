import 'package:flutter/cupertino.dart';

import '../consts/consts.dart';

Widget BannerSwiper(bannersList , {height = 150.0}){
  return VxSwiper.builder(
      aspectRatio: 16/9,
      autoPlay: true,
      enlargeCenterPage: true,
      height: height,
      autoPlayInterval: Duration(seconds: 3),
      itemCount: bannersList.length,
      itemBuilder: (context,index) {
        return Image.asset(bannersList[index] ,
          fit: BoxFit.fill,
        ).box.rounded.clip(Clip.antiAlias ).margin(EdgeInsets.symmetric(horizontal: 10.0)).make();
      });
}