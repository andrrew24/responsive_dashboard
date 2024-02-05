import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/allexepensesheader.dart';
import 'package:responsive_dashboard/views/widgets/allexpenses_row.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          AllExpensesHeader(
            title: "All Expenses",
          ),
          Gap(16),
          AllExpensesRow(),
          Gap(24),
        ],
      ),
    );
  }
}