import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/income_chart.dart';
import '../utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  IncomeSectionBody({
    super.key,
  });
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750 ?
    const Expanded(child: DetailedIncomeChart()):const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: IncomeDetails(),
          ),
        )
      ],
    );
  }
}
