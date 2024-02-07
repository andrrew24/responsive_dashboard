import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/allexepensesheader.dart';
import 'package:responsive_dashboard/views/widgets/chart_details.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: const Column(
        children: [
          CustomHeader(title: "Income"),
          Gap(5),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: ChartDetails())
            ],
          ),
        ],
      ),
    );
  }
}
