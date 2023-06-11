/// This is a class that represents a transaction.
/// It holds information such as the transaction ID, title, amount, and date
class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime dateTime;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.dateTime});
}
