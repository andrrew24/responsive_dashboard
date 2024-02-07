import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_listview.dart';

class DesktopTrailSection extends StatelessWidget {
  const DesktopTrailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const TransactionHistoryHeader(),
        const Gap(5),
        const TransactionHistoryListView()
      ],
    );
  }
}
