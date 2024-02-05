import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_form.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // QuickInvoiceHeader(),
          // Gap(5),
          // LatestTransactionSection(),
          // Divider(
          //   thickness: .5,
          //   height: 20,
          // ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
