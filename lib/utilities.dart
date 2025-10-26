import 'package:intl/intl.dart';

String formatDate(DateTime date, {String format = "dd-MMM-yyyy"}) {
  final DateFormat dateFormat = DateFormat(format);
  return dateFormat.format(date);
}
