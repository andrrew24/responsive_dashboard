import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_expenses_item.dart';
import 'package:responsive_dashboard/views/widgets/inactive_expenses_item.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem(
      {super.key, required this.expensesItemModel, required this.isSelected});

  final ExpensesItemModel expensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveEpensesItem(expensesItemModel: expensesItemModel)
        : InActiveEpensesItem(expensesItemModel: expensesItemModel);
  }
}
