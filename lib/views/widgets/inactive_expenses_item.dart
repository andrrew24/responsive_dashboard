import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_header.dart';

class InActiveEpensesItem extends StatelessWidget {
  const InActiveEpensesItem({super.key, required this.expensesItemModel});

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(
            assetName: expensesItemModel.assetName,
          ),
          const Gap(15),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesItemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          const Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesItemModel.subtitle,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesItemModel.amount.toString(),
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
