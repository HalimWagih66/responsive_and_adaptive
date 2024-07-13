import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/custom_background_container.dart';
import 'IncomeSectionBody.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 3,
        child: Column(
      children: [
        const IncomeSectionHeader(),
        IncomeSectionBody()
      ],
    ));
  }
}

