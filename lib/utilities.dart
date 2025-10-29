import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:drift/drift.dart';

String formatDate(DateTime date, {String format = "dd-MMM-yyyy"}) {
  final DateFormat dateFormat = DateFormat(format);
  return dateFormat.format(date);
}

class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();

  @override
  List<String> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    try {
      return List<String>.from(json.decode(fromDb));
    } catch (e) {
      return fromDb.split(",");
    }
  }

  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}
