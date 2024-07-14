import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/models/UserInfoListTileModel.dart';
import 'package:responsive_and_adaptive/widgets/UserInfoListTileItem.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  final List<UserInfoListTileModel> items = const [
    UserInfoListTileModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: 'assets/images/avatar_1.svg'),
    UserInfoListTileModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: 'assets/images/avatar_2.svg'),
    UserInfoListTileModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@',
        image: 'assets/images/avatar_3.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTileItem(userInfoListTileModel: e),
              ),
            ).toList(),
      ),
    );
  }
}
