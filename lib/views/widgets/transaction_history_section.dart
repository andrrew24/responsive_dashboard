import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_item.dart';

class TransactonHistorySection extends StatelessWidget {
  const TransactonHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TransactionHistoryHeader(),
        const Gap(5),
        Expanded(
          child: ListView.builder(
              itemCount: transactionHistoryList.length,
              itemBuilder: ((context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: TransactionItem(),
                );
              })),
        )
      ],
    );
  }
}
