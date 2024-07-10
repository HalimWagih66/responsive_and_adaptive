import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/layouts/adaptive_layout.dart';
import 'package:responsive_and_adaptive/widgets/DesktopLayout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          desktopLayout: (context) => const DesktopLayout(),
          tabletLayout: (context) => const SizedBox(),
          mobileLayout: (context) => const SizedBox(),
      ),
    );
  }
}
