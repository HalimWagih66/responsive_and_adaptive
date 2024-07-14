import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/utils/app_styles.dart';
import 'package:responsive_and_adaptive/widgets/dots_indicator.dart';
import 'package:responsive_and_adaptive/widgets/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    },);
    super.initState();
  }
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 420,child: Text("My card",style: AppStyles.styleSemiBold20(context),)),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentPage: currentPage)
      ],
    );
  }
}
