import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/views/widgets/quickinvoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Gap(24),
          LatestTransactionSection(),
          Divider(
            thickness: .5,
            height: 24,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
