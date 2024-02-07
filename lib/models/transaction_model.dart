class TransactionModel {
  final String title, date, amount;

  TransactionModel(
      {required this.title, required this.date, required this.amount});
}

List<TransactionModel> transactionHistoryList = [
  TransactionModel(
      title: "Cash Withdrawal", date: "13 Apr, 2022 ", amount: r"$20,129"),
  TransactionModel(
      title: "Cash Withdrawal", date: "13 Apr, 2022 ", amount: r"$20,129"),
  TransactionModel(
      title: "Cash Withdrawal", date: "13 Apr, 2022 ", amount: r"$20,129"),
];
