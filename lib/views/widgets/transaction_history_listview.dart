import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryList
          .map((e) => const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TransactionItem(),
              ))
          .toList(),
    );
  }
}
