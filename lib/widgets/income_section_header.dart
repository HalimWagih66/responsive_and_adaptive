import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/range_options.dart';
import '../utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget  {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: const EdgeInsets.only(left: 6),
            child: Text("Income",style: AppStyles.styleSemiBold20(context),)),
        const RangeOptions()
      ],
    );
  }
}
