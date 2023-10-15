import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:leaseposh/consts/consts.dart';
import 'package:leaseposh/widgets_common/bannerSwiper.dart';
import 'package:leaseposh/widgets_common/categoryStack.dart';
import 'package:leaseposh/widgets_common/forYou.dart';
import 'package:leaseposh/widgets_common/itemCard.dart';
import 'package:leaseposh/widgets_common/topBar.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = context.screenHeight;
    var screenWidth = context.screenWidth;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          margin: EdgeInsets.only(right: screenWidth * 0.040),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            splashColor: Colors.blueAccent.shade100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            onPressed: () {},
            child: Icon(Icons.camera),
          ),
        ),
        body: Stack(children: [
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: (screenHeight * 0.10)),
                child: Column(
                  children: [
                    BannerSwiper(bannersList,
                        height: (screenHeight * 0.20)), //Banner
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: const Text("Categories",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ),
                    Stack(children: [
                      Column(
                        children: [
                          (screenHeight*0.45).heightBox,
                          StickyHeader(
                            header: ForYou(() {}, () {}, screenHeight),
                            content: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 10,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisExtent: screenHeight * 0.30),
                                itemBuilder: (context, index) {
                                  return ItemCard(screenWidth: screenWidth);
                                }),
                          ),
                        ],
                      ),
                      Column(children: [
                        Row(
                          children: [
                            CategoryStack(imMen, " Men ",
                                height: (screenHeight * 0.23),
                                width: (screenWidth * 0.45),
                                paddingLeft: (screenWidth * 0.033333)),
                            CategoryStack(imWomen, " Women ",
                                height: (screenHeight * 0.23),
                                width: (screenWidth * 0.45),
                                paddingLeft: (screenWidth * 0.033333))
                          ],
                        ),
                        Row(
                          children: [
                            CategoryStack(imGirl, " Girls ",
                                height: (screenHeight * 0.23),
                                width: (screenWidth * 0.45),
                                paddingLeft: (screenWidth * 0.033333)),
                            CategoryStack(imBoy, " Boys ",
                                height: (screenHeight * 0.23),
                                width: (screenWidth * 0.45),
                                paddingLeft: (screenWidth * 0.033333))
                          ],
                        ),
                      ])
                    ]),
                  ],
                ),
              ),
            ),
          ),
          // TopBar(context.screenWidth, screenHeight),
        ]),
      ),
    );
  }
}
