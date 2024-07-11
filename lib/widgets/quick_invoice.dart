import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive/widgets/quick_invoice_form.dart';
import 'QuickInvoiceHeader.dart';
import 'custom_text_field.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 36),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm(),
          ],
        ),
    );
  }
}
