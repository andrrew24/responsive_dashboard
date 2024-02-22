import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/allexpenses_item.dart';

class AllExpensesRow extends StatefulWidget {
  const AllExpensesRow({
    super.key,
  });

  @override
  State<AllExpensesRow> createState() => _AllExpensesRowState();
}

class _AllExpensesRowState extends State<AllExpensesRow> {
  int activeIndex = 0;
  changeIndex(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            changeIndex(0);
          },
          child: AllExpenseItem(
            expensesItemModel: expensesItemsList[0],
            isSelected: activeIndex == 0,
          ),
        ),
      ),
      const Gap(12),
      Expanded(
        child: GestureDetector(
          onTap: () {
            changeIndex(1);
          },
          child: AllExpenseItem(
            expensesItemModel: expensesItemsList[1],
            isSelected: activeIndex == 1,
          ),
        ),
      ),
      const Gap(12),
      Expanded(
        child: GestureDetector(
          onTap: () {
            changeIndex(2);
          },
          child: AllExpenseItem(
            expensesItemModel: expensesItemsList[2],
            isSelected: activeIndex == 2,
          ),
        ),
      ),
    ]);
  }
}
