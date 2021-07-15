import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youdemy/breakpoints.dart';
import 'package:youdemy/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: constraints.maxWidth >= TABLET_BREAKPOINT ? 0 : 16,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          return CourseItem();
        },
      ),
    );
  }
}
