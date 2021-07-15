import 'package:flutter/material.dart';
import 'package:youdemy/breakpoints.dart';

class AdvantageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= PHONE_BREAKPOINT) {
          return Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage('+45.0000 alunos', 'Didática garantida'),
              buildHorizontalAdvantage('+45.0000 alunos', 'Didática garantida'),
              buildHorizontalAdvantage('+45.0000 alunos', 'Didática garantida'),
            ],
          );
        } else {
          return Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildVerticalAdvantage('+45.0000 alunos', 'Didática garantida'),
              buildVerticalAdvantage('+45.0000 alunos', 'Didática garantida'),
              buildVerticalAdvantage('+45.0000 alunos', 'Didática garantida'),
            ],
          );
        }
      },
    );
  }

  Widget buildHorizontalAdvantage(String title, String subtitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildVerticalAdvantage(String title, String subtitle) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
