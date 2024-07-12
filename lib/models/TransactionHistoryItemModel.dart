class TransactionHistoryItemModel{
  final String title;
  final String date;
  final String amount;
  final bool isWithdrawal;
  const TransactionHistoryItemModel(this.isWithdrawal, {required this.title,required this.amount,required this.date});
}