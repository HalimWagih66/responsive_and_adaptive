import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/models/all_expenses_item_model.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses_header.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses_item.dart';
import 'package:responsive_and_adaptive/widgets/range_options.dart';

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
