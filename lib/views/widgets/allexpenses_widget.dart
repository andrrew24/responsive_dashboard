import 'package:flutter/material.dart';
// ignore: unused_import
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
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          CustomHeader(
            title: "All Expenses",
          ),
          Gap(5),
          AllExpensesRow(),
        ],
      ),
    );
  }
}
