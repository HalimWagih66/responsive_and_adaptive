import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';

import '../models/TransactionHistoryItemModel.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key,required this.transactionHistoryItemModel});
  final TransactionHistoryItemModel transactionHistoryItemModel;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        title: Text(transactionHistoryItemModel.title,style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(transactionHistoryItemModel.date,style: AppStyles.styleRegular12(context),),
        trailing: Text(transactionHistoryItemModel.amount,style: AppStyles.styleSemiBold20(context).copyWith(color: transactionHistoryItemModel.isWithdrawal?const Color(0xffF3735E):const Color(0xff7DD97B)),),
      ),
    );
  }
}
