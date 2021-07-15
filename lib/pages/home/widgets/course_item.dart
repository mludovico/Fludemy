import 'package:flutter/material.dart';
import 'package:youdemy/breakpoints.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://img-c.udemycdn.com/course/240x135/1764438_44b7_5.jpg',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 4),
          Flexible(
            child: Text(
              'Criação de Apps Android e iOS com Flutter 2021-Crie 14 Apps',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: constraints.maxWidth / 20,
              ),
            ),
          ),
          Text(
            'Daniel Ciolfi, Desenvolvedor de Apps (Android e iOS)',
            style: TextStyle(
              color: Colors.grey,
              fontSize: constraints.maxWidth / 22,
            ),
          ),
          Text(
            'R\$22,90',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: constraints.maxWidth / 20,
            ),
          ),
        ],
      ),
    );
  }
}
