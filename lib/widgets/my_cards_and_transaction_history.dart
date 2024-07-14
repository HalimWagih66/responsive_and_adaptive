import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive/widgets/my_cards_section.dart';
import 'package:responsive_and_adaptive/widgets/transaction_history.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          MyCardsSection(),
          TransactionHistory(),

        ],
      ),
 );
  }
}
