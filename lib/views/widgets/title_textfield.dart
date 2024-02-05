import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TitleTextFieldWidget extends StatelessWidget {
  const TitleTextFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  final String labelText, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppStyles.styleMedium16(context),
        ),
        const Gap(5),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: hintText,
              hintStyle: AppStyles.styleRegular16(context)
                  .copyWith(color: Colors.grey),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15))),
        ),
      ],
    );
  }
}
