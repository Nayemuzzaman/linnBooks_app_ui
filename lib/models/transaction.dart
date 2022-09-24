class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(
    this.id,
    this.to,
    this.amount,
    this.date,
    this.description,
  );
}

final List<Transaction> transactions = [
  Transaction(
    1,
    'Cash Sale',
    '350.00',
    'Sale',
    '13-Sep-2022 12:13',
  ),
  Transaction(
    2,
    'Internet Bill',
    '950.00',
    'Expense',
    '15-Sep-2022 12:13',
  ),
  Transaction(
    3,
    'Elecric Bill',
    '440.00',
    'Income',
    '13-Sep-2022 12:13',
  ),
  Transaction(
    4,
    'Nayem',
    '500.00',
    '+Recive 500',
    '19-Sep-2022 12:13',
  ),
  Transaction(
    5,
    'Cash Sale',
    '350.00',
    'Sale',
    '13-Sep-2022 12:13',
  ),
  Transaction(
    6,
    'Elecric Bill',
    '440.00',
    'Income',
    '13-Sep-2022 12:13',
  ),
  Transaction(
    7,
    'Cash Sale',
    '350.00',
    'Sale',
    '13-Sep-2022 12:13',
  ),
  Transaction(
    8,
    'Nayem',
    '500.00',
    '+Recive 500',
    '19-Sep-2022 12:13',
  ),
  Transaction(
    9,
    'Elecric Bill',
    '440.00',
    'Income',
    '13-Sep-2022 12:13',
  ),
  Transaction(
    10,
    'Cash Sale',
    '350.00',
    'Sale',
    '13-Sep-2022 12:13',
  ),
];
