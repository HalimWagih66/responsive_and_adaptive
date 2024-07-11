import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses_item.dart';
import '../models/all_expenses_item_model.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(image: "assets/images/balance.svg",title: "Balance",date: "April 2022",price: r"$20.129"),
    AllExpensesItemModel(image: "assets/images/income.svg",title: "Income",date: "April 2022",price: r"$20.129"),
    AllExpensesItemModel(image: "assets/images/expenses.svg",title: "Expenses",date: "April 2022",price: r"$20.129")
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {

        if(e.key == 1){
          return Expanded(child: GestureDetector(
            onTap: () {
              if (activeIndex != e.key) {
                setState(() {
                  activeIndex = e.key;

                  print(activeIndex);
                });
              }
            },
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12),child: AllExpensesItem(allExpensesItemModel: e.value, activeItem: activeIndex == e.key,))));

        }
        return Expanded(child: GestureDetector(
          onTap: () {
            if (activeIndex != e.key) {
              setState(() {
                activeIndex = e.key;
                print(activeIndex);
              });
            }
          },
            child: AllExpensesItem(allExpensesItemModel: e.value, activeItem: activeIndex == e.key,)));
      },
    ).toList());
  }
}