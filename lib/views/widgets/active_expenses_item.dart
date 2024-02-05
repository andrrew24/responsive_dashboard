import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_header.dart';

class ActiveEpensesItem extends StatelessWidget {
  const ActiveEpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xff4eb7f2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(
            assetName: expensesItemModel.assetName,
            backgrounImage: Colors.white.withOpacity(0.1000000149011612),
            imageColor: Colors.white,
            iconColor: Colors.white,
          ),
          const Gap(34),
          Text(
            expensesItemModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            expensesItemModel.subtitle,
            style:
                AppStyles.styleRegular14(context).copyWith(color: Colors.white),
          ),
          const Gap(16),
          Text(
            expensesItemModel.amount.toString(),
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
