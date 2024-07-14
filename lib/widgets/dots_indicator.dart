import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/CustomDotIndecator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CustomDotIndicator(isActive: currentPage == index),
      )),
    );
  }
}
