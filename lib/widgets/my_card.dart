import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420/215,
      child: Container(
        decoration: ShapeDecoration(
            color: const Color(0xff4eb7f2),
            image: const DecorationImage(image: AssetImage("assets/images/card_background.png")),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31,right: 42,top: 16),
              title: Text("Name card", style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
              subtitle: Text("Syah Bandi",style: AppStyles.styleMedium20(context),),
              trailing: SvgPicture.asset("assets/images/gallery.svg"),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("0918 8124 0042 8129",style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),),
                  Text("12/24 - 124",style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),)
                ],
              ),
            ),
            const SizedBox(height: 54 - 28)
          ],
        ),
      ),
    );
  }
}
