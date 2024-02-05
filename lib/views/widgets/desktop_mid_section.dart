import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_expenses_item.dart';
import 'package:responsive_dashboard/views/widgets/allexepensesheader.dart';
import 'package:responsive_dashboard/views/widgets/inactive_expenses_item.dart';

class DesktopMidSection extends StatelessWidget {
  const DesktopMidSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xfff7f9fa)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 24, left: 32, bottom: 32),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const AllExpensesHeader(),
                  const Gap(16),
                  Row(
                      children: expensesItemsList.asMap().entries.map((e) {
                    int index = e.key;
                    var item = e.value;

                    if (index == 1) {
                      return Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: ActiveEpensesItem(expensesItemModel: item),
                      ));
                    } else {
                      return Expanded(
                          child: InActiveEpensesItem(expensesItemModel: item));
                    }
                  }).toList()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
