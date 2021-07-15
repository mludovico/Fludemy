import 'package:flutter/material.dart';
import 'package:youdemy/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      toolbarHeight: 72,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 72,
          ),
          const SizedBox(width: 24),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 24),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          OutlinedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(double.infinity, 38)),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              side: MaterialStateProperty.all(
                BorderSide(color: Colors.white),
              ),
            ),
            child: Text('Fazer Login'),
            onPressed: () {},
          ),
          const SizedBox(width: 24),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(double.infinity, 38)),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
            ),
            child: Text('Cadastre-se'),
            onPressed: () {},
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
