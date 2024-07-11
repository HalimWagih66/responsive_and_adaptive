import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses.dart';

import 'custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          height: 32,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [AllExpenses()],
          ),
        ),
      ],
    );
  }
}
