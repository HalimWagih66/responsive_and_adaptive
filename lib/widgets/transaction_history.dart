import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/transaction_History_item.dart';
import 'package:responsive_and_adaptive/widgets/transaction_history_header.dart';
import 'package:responsive_and_adaptive/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          height: 40,
        ),
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text("13 April 2022"),
        SizedBox(height: 16),
        TransactionHistoryListView()
      ],
    );
  }
}
