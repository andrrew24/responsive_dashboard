import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransactionSection(),
          Divider(
            thickness: .5,
            height: 20,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
