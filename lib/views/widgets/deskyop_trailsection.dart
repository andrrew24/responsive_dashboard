import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/mycard_and_transaction_history.dart';

class DesktopTrailSection extends StatelessWidget {
  const DesktopTrailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 32.0),
      child: Column(
        children: [
          MyCardAndTransactionHistorySection(),
          Gap(24),
          Expanded(child: IncomeSection())
        ],
      ),
    );
  }
}
