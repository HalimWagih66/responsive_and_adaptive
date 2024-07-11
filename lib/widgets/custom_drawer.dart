import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/models/UserInfoListTileModel.dart';
import 'package:responsive_and_adaptive/models/drawer_item_model.dart';
import 'package:responsive_and_adaptive/widgets/InActiveDrawerItem_and_ActiveDrawerItem.dart';
import 'package:responsive_and_adaptive/widgets/UserInfoListTileItem.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> drawerItemModels = const[
    DrawerItemModel(title: "Dashboard",image: "assets/images/dashboard.svg"),
    DrawerItemModel(title: "My Transaction",image: "assets/images/my_transctions.svg"),
    DrawerItemModel(title: "Statistics",image: "assets/images/statistics.svg"),
    DrawerItemModel(title: "Wallet Account",image: "assets/images/wallet_account.svg"),
    DrawerItemModel(title: "My Investments",image: "assets/images/my_investments.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
          SliverToBoxAdapter(child: UserInfoListTileItem(userInfoListTileModel: UserInfoListTileModel(title: "Lekan Okeowo", subtitle: "demo@gmail.com", image: "assets/images/avatar_3.svg"))),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerListItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child:  SizedBox(height: 20)),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: "Setting system", image: "assets/images/settings.svg")),
                InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: "Log out", image: "assets/images/logout.svg")),
                SizedBox(height: 48)
              ],
            ),
          ),
        ],
    );
  }
}
