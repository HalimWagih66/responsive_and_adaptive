import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses.dart';
import 'package:responsive_and_adaptive/widgets/quick_invoice.dart';

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
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
