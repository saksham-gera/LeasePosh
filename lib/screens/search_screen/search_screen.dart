import 'package:flutter/cupertino.dart';

import '../../consts/consts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          TextField(
            autofocus: true,
            style: TextStyle(
              fontSize: 20
            ),
            decoration: InputDecoration(
              hintText: "Search Your Favourites",
              prefixIcon: Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
