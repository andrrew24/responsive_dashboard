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
    return const Column(
      children: [
        AllExpensesWidget(),
        Gap(24),
        QuickInvoiceWidget(),
      ],
    );
  }
}
