import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.grey.shade100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: ListTile(
        title: Text(
          "Cash Withdrawal",
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          "13 Apr, 2022 ",
          style: AppStyles.styleRegular14(context),
        ),
        trailing: Text(
          r"$20,129",
          style: AppStyles.styleMedium20(context).copyWith(color: Colors.red),
        ),
      ),
    );
  }
}
