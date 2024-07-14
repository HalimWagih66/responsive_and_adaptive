import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/all_expenses_item.dart';
import '../models/all_expenses_item_model.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: "assets/images/balance.svg",
        title: "Balance",
        date: "April 2022",
        price: r"$20.129"),
    AllExpensesItemModel(
        image: "assets/images/income.svg",
        title: "Income",
        date: "April 2022",
        price: r"$20.129"),
    AllExpensesItemModel(
        image: "assets/images/expenses.svg",
        title: "Expenses",
        date: "April 2022",
        price: r"$20.129")
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateState(0);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              activeItem: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateState(1);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              activeItem: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateState(2);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              activeItem: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
  void updateState(int index) {
    if (activeIndex != index) {
      setState(() {
        activeIndex = index;
        print(activeIndex);
      });
    }
  }
}
