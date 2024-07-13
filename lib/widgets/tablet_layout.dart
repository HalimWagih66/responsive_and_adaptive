import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: MobileLayout()),
        SizedBox(width: 26),
      ],
    );
  }
}

