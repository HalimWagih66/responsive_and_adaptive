import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.color, this.backgroundColor});
  final Color? backgroundColor,color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {

    }, style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      backgroundColor: backgroundColor??const Color(0xff4db7f2)
    ),
        child: Text("Send Money",style: AppStyles.styleSemiBold18(context).copyWith(color: color)));
  }
}
