import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.assetName,
    this.iconColor,
    this.imageColor,
    this.backgrounImage,
  });

  final String assetName;
  final Color? iconColor, imageColor, backgrounImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: backgrounImage ?? Colors.grey.shade100,
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            assetName,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4eb7f2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: 3.14159265,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: iconColor ?? Colors.black,
            ))
      ],
    );
  }
}
