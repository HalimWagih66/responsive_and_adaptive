import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, required this.title});
  final String hint , title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(hint,style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            hintText: title,
            hintStyle: AppStyles.styleRegular16(context),
            fillColor: const Color(0xffFAFAFA),
            filled: true,
            border: buildOutlineInputBorder(),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
          ),
        )
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xffFAFAFA)
            ),
          );
  }
}
