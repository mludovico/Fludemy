import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: FlutterLogo(size: 56),
      centerTitle: true,
      foregroundColor: Colors.white,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}
