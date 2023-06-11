import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  Function addTx;
  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();

  ///This class represents the state of the NewTransaction widget.
}

class _NewTransactionState extends State<NewTransaction> {
  ///This class represents a form for adding a new transaction.
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void onSubmitPressed() {
    ///Handles the submission of the form and triggers the addition of a new transaction.
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount < 0) {
      return;
    }

    widget.addTx(titleController.text, double.parse(amountController.text));

    ///The function to add a new transaction.

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => onSubmitPressed(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => onSubmitPressed(),
            ),
            ElevatedButton(
              onPressed: onSubmitPressed,
              child: Text("Add Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
