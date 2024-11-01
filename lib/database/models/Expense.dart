import 'package:isar/isar.dart';

part 'Expense.g.dart';

@Collection()
class Expense {
  Id id = Isar.autoIncrement;
  final String name;
  final double amount;
  final String category;
  late String note;
  final DateTime dateTime;

  Expense({
    required this.amount,
    required this.category,
    required this.dateTime,
    required this.name,
  });
}
