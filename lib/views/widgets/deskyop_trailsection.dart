import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_item.dart';

class DesktopTrailSection extends StatelessWidget {
  const DesktopTrailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My card",
            style: AppStyles.styleSemiBold20(context),
          ),
          const Gap(20),
          const MyCardSection(),
          const Divider(
            height: 20,
            thickness: .5,
          ),
        ],
      ),
    );
  }
}
