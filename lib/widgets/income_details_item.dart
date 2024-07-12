import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/models/icome_details_item_model.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});
  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(incomeDetailsItemModel.percentage,style: AppStyles.styleMedium16(context),),
      title: Text(incomeDetailsItemModel.title,style: AppStyles.styleRegular16(context),),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeDetailsItemModel.colorDot,
        ),
      ),
    );
  }
}
