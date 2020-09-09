import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.yellow),
        Container(color: Colors.red),
      ],
    );
  }
}
