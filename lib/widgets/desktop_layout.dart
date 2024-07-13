import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'package:flutter/material.dart';
import 'my_cards_and_transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers:[
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          MyCardsAndTransactionHistory(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                )
              )
            ]
          ),
        ),
      ],
    );
  }
}
