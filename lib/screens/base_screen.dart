import 'package:flutter/material.dart';

import '../constants.dart';

class BaseScreen extends StatelessWidget {
  final Widget? child;
  final Widget? appBar;

  const BaseScreen({super.key, this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: mediaHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [AppTheme.gradientDark, AppTheme.gradientLight],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  appBar != null
                      ? Column(
                        children: [appBar!, SizedBox(height: kMediumSpacing)],
                      )
                      : SizedBox(),
                  child ?? SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
