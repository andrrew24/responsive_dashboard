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
    return Container(
      color: const Color(0xfff7f9fa),
      child: Padding(
        padding: const EdgeInsets.only(right: 32),
        child: const Column(
          children: [
            MyCardAndTransactionHistorySection(),
            Gap(10),
            IncomeSection()
          ],
        ),
      ),
    );
  }
}
