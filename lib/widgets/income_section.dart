import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive/widgets/income_details.dart';
import 'income_chart.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 3,
        child:  const Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails())
            ],
          ),
        )
      ],
    ));
  }
}
