import 'package:flutter/material.dart';
import 'package:leaseposh/consts/consts.dart';
import 'package:leaseposh/screens/home_screen/home_screen.dart';
import 'package:leaseposh/screens/screens.dart';
import 'package:leaseposh/widgets_common/topBar.dart';

var topBarVisibility = true;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController? _controller;

  var navBarItems = [
    Tab(
      icon: Icon(
        Icons.home,
        size: 35,
      ),
    ),
    Tab(
      icon: Image.asset(icWishlist),
    ),
    Tab(
      icon: Icon(
        Icons.shopping_cart,
        size: 35,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.search,
        size: 35,
      ),
    )
  ];

  var navBody = [HomeScreen(), WishlistScreen(), CartScreen(), SearchScreen()];

  void initState() {
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var screenHeight = context.screenHeight;
    var screenWidth = context.screenWidth;

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 15.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(5, 5))
                ]),
            width: screenWidth,
            height: 70.0,
            child: Theme(
              //to remove the bottom line in tabbar
              data: theme.copyWith(
                  colorScheme: theme.colorScheme
                      .copyWith(surfaceVariant: Colors.transparent)),
              child: TabBar(
                onTap: (index) {
                  if (index == 3) {
                    topBarVisibility = false;
                  } else {
                    setState(() {
                      topBarVisibility = true;
                    });
                  }
                  print(index);
                },
                controller: _controller,
                tabs: navBarItems,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              TabBarView(
                controller: _controller,
                children: navBody,
              ),
              TopBar(screenWidth, screenHeight, visible: topBarVisibility),
            ],
          ),
        ),
      ),
    );
  }
}
