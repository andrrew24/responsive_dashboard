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
      child: const Column(
        children: [
          const Expanded(
            child: MyCardAndTransactionHistorySection(),
          ),
          const Gap(15),
          IncomeSection()
        ],
      ),
    );
  }
}






// const Gap(15),
// Expanded(
//     child: Container(
//   padding: const EdgeInsets.symmetric(horizontal: 10),
//   decoration: ShapeDecoration(
//       color: Colors.white,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12))),
//   child: const Column(
//     children: [CustomHeader(title: "Income")],
//   ),
// ))
