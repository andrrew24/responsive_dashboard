import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.text, this.backgroundColor, this.textColor});

  final String text;
  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            backgroundColor: MaterialStatePropertyAll(
                backgroundColor ?? const Color(0xff4eb7f2)),
          ),
          child: Text(
            text,
            style: AppStyles.styleSemiBold18(context)
                .copyWith(color: textColor ?? Colors.white),
          )),
    );
  }
}
