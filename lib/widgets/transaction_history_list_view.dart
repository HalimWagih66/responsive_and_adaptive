import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/transaction_History_item.dart';

import '../models/TransactionHistoryItemModel.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  final List<TransactionHistoryItemModel> items = const [
    TransactionHistoryItemModel(true, title: "Cash Withdrawal", amount: r"$20,129", date: "13 Apr, 2022"),
    TransactionHistoryItemModel(false, title: "Landing Page project", amount: r"$2,000", date: "13 Apr, 2022 at 3:30 PM"),
    TransactionHistoryItemModel(false, title: "Juni Mobile App project", amount: r"$2,000", date: "13 Apr, 2022 at 3:30 PM"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryItem(transactionHistoryItemModel: e,)).toList(),
    );
  }
}
