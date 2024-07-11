import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';
import 'custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(hint: 'Customer name', title: 'Type customer name',)),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(hint: 'Customer Email', title: 'Type customer email',)),
          ],
        ),
        SizedBox(
          height: 20
        ),
        Row(
          children: [
            Expanded(child: CustomTextField(hint: 'Customer name', title: 'Type customer name',)),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(hint: 'Item Count', title: 'USD',)),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomElevatedButton(color: Color(0xff4EB7F2),backgroundColor: Colors.white)),

            SizedBox(width: 24),
            Expanded(child: CustomElevatedButton()),

          ],
        )
      ],
    );
  }
}
