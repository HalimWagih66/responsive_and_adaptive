import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/models/all_expenses_item_model.dart';
import 'active_and_InActive_Expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.activeItem});
  final AllExpensesItemModel allExpensesItemModel;
  final bool activeItem;
  @override
  Widget build(BuildContext context) {
    return  activeItem?ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel):InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
