import 'package:flutter/material.dart';

class WatsappLayout extends StatelessWidget {
  const WatsappLayout(
      {super.key, required this.mobileScaffold, required this.desktopScaffold});

  final Widget mobileScaffold;
  final Widget desktopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 930) {
        return mobileScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}
