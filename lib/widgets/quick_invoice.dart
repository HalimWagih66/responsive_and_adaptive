import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/custom_background_container.dart';
import 'QuickInvoiceHeader.dart';
import 'latest_transaction_list_view.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            LatestTransactionListView()
          ],
        ),
    );
  }
}
