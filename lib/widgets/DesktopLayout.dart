import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/transaction_history.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'latest_transaction.dart';
import 'my_cards_and_transaction_history.dart';
import 'my_cards_section.dart';

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
            child: AllExpensesAndQuickInvoiceSection()
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardsAndTransactionHistory())
      ],
    );
  }
}
