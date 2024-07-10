import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive/models/UserInfoListTileModel.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';

class UserInfoListTileItem extends StatelessWidget {
  const UserInfoListTileItem({super.key, required this.userInfoListTileModel});
  final UserInfoListTileModel userInfoListTileModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        ListTile(
          leading: SvgPicture.asset(userInfoListTileModel.image),
          title: Text(userInfoListTileModel.title,style: AppStyles.styleSemiBold16(context),),
          subtitle: Text(userInfoListTileModel.subtitle,style: AppStyles.styleRegular12(context),),

        ),
      ],
    );
  }
}
