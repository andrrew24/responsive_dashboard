import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_listview.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
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
          const TransactionHistoryHeader(),
          const Gap(20),
          Text(
            "13 April 2022",
            style: AppStyles.styleMedium16(context),
          ),
          const Gap(16),
          const TransactionHistoryListView(),
        ],
      ),
    );
  }
}
