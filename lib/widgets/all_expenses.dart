import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses_header.dart';
import 'AllExpensesItemsListView.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView()
        ],
      ),
    );
  }
}
