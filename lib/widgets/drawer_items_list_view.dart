import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerListItems extends StatefulWidget {
  const DrawerListItems({super.key});

  @override
  State<DrawerListItems> createState() => _DrawerListItemsState();
}

class _DrawerListItemsState extends State<DrawerListItems> {
  int activeItem = 0;
  final List<DrawerItemModel> drawerItemModels = const[
    DrawerItemModel(title: "Dashboard",image: "assets/images/dashboard.svg"),
    DrawerItemModel(title: "My Transaction",image: "assets/images/my_transctions.svg"),
    DrawerItemModel(title: "Statistics",image: "assets/images/statistics.svg"),
    DrawerItemModel(title: "Wallet Account",image: "assets/images/wallet_account.svg"),
    DrawerItemModel(title: "My Investments",image: "assets/images/my_investments.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if(activeItem != index){
            setState(() {
              activeItem = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: DrawerItem(drawerItemModel: drawerItemModels[index], activeItem: activeItem == index),
        ),
      ),itemCount: drawerItemModels.length,);
  }
}
