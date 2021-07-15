import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youdemy/breakpoints.dart';
import 'package:youdemy/pages/home/widgets/app_bar/mobile_appbar.dart';
import 'package:youdemy/pages/home/widgets/app_bar/web_appbar.dart';
import 'package:youdemy/pages/home/widgets/sections/advantage_section.dart';
import 'package:youdemy/pages/home/widgets/sections/courses_section.dart';
import 'package:youdemy/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < PHONE_BREAKPOINT
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBarr(),
                  preferredSize: Size(double.infinity, 72),
                ),
          drawer: constraints.maxWidth < PHONE_BREAKPOINT ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantageSection(),
                  Divider(color: Colors.grey[300]),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
