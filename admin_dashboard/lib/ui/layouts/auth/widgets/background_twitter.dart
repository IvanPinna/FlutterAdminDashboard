import 'dart:ui_web';

import 'package:flutter/material.dart';

class BackgroundTwitter extends StatelessWidget {
  const BackgroundTwitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: buildBoxDecoration(),
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image(
                image: AssetImage('twitter-white-logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('twitter-bg.png'),
          fit: BoxFit.cover
        )
      );
  }
}