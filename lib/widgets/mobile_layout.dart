import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_cards_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistory(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}
