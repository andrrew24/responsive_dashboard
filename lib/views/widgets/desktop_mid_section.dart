import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/allexepensesheader.dart';
import 'package:responsive_dashboard/views/widgets/allexpenses_row.dart';

class DesktopMidSection extends StatelessWidget {
  const DesktopMidSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xfff7f9fa)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 24, left: 32, bottom: 32),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.white),
              child: const Column(
                children: [
                  AllExpensesHeader(),
                  Gap(16),
                  AllExpensesRow(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
