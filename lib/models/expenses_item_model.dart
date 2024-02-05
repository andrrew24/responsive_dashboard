import 'package:responsive_dashboard/utils/app_images.dart';

class ExpensesItemModel {
  final String assetName, title, subtitle, amount;

  ExpensesItemModel(
      {required this.assetName,
      required this.title,
      required this.subtitle,
      required this.amount});
}

List<ExpensesItemModel> expensesItemsList = [
  ExpensesItemModel(
      assetName: Assets.imagesBalance,
      title: "Balance",
      subtitle: "April 2022",
      amount: r"$20,129"),
  ExpensesItemModel(
      assetName: Assets.imagesIncome,
      title: "Income",
      subtitle: "April 2022",
      amount: r"$20,129"),
  ExpensesItemModel(
      assetName: Assets.imagesExpenses,
      title: "Expenses",
      subtitle: "April 2022",
      amount: r"$20,129"),
];
