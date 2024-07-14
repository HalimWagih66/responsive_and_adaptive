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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                //padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackground??const Color(0xfffafafa)
                ),
                child: Center(child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(color??const Color(0xff4db7f2), BlendMode.srcIn),)),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(angle: -1.57079633 *2,child:  Icon(Icons.arrow_back_ios_new,color: color == null?Colors.black:Colors.white,),)
      ],
    );
  }
}
