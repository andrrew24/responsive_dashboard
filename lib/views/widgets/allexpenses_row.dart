import 'package:flutter/material.dart';
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
    return Row(
        children: expensesItemsList.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;

      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              changeIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: AllExpenseItem(
                expensesItemModel: item,
                isSelected: activeIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              changeIndex(index);
            },
            child: AllExpenseItem(
              expensesItemModel: item,
              isSelected: activeIndex == index,
            ),
          ),
        );
      }
    }).toList());
  }
}
