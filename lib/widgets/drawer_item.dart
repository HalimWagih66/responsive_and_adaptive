import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/models/drawer_item_model.dart';

import 'InActiveDrawerItem_and_ActiveDrawerItem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key,required this.drawerItemModel, required this.activeItem});
  final DrawerItemModel drawerItemModel;
  final bool activeItem;
  @override
  Widget build(BuildContext context) {
    return activeItem?ActiveDrawerItem(drawerItemModel: drawerItemModel):InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
