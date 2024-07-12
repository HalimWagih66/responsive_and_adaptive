import 'package:flutter/material.dart';

import '../models/icome_details_item_model.dart';
import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  final List<IncomeDetailsItemModel>items =  const [
    IncomeDetailsItemModel(title: "Other",colorDot: Color(0xff208CC8),percentage: "40%",),
    IncomeDetailsItemModel(title: "Product royalti",colorDot: Color(0xff4EB7F2),percentage: "25%",),
    IncomeDetailsItemModel(title: "Design service",colorDot: Color(0xff064061),percentage: "20%",),
    IncomeDetailsItemModel(title: "Design service",colorDot: Color(0xffE2DECD),percentage: "22%",),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap: true,itemBuilder: (context, index) => IncomeDetailsItem( incomeDetailsItemModel: items[index]),itemCount: items.length,);
  }
}
