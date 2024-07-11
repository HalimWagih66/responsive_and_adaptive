import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
   AllExpensesItemHeader({super.key, this.imageBackground,this.color, required this.image});
  final String image;
  Color? imageBackground,color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackground??const Color(0xfffafafa)
          ),
          child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(color??const Color(0xff4db7f2), BlendMode.srcIn),),
        ),
        const Spacer(),
        Transform.rotate(angle: -1.57079633 *2,child:  Icon(Icons.arrow_back_ios_new,color: color == null?Colors.black:Colors.white,),)
      ],
    );
  }
}
