import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/allexpenses_widget.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class DesktopMidSection extends StatelessWidget {
  const DesktopMidSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xfff7f9fa)),
      child: const Padding(
        padding: EdgeInsets.only(top: 10, right: 24, left: 32, bottom: 32),
        child: Column(
          children: [
            AllExpensesWidget(),
            Gap(10),
            QuickInvoiceWidget(),
          ],
        ),
      ),
    );
  }
}
