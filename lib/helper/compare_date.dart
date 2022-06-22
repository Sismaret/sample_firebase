import 'package:intl/intl.dart';

class CompareDate {
  static bool isEqualDate(DateTime firstDate, DateTime secondDate) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    String firstVal = formatter.format(firstDate);
    String secondVal = formatter.format(secondDate);
    bool isEqual = firstVal == secondVal ? true : false;
    // print('===========================');
    // print(firstVal);
    // print(secondVal);
    // print(isEqual);
    // print('===========================');
    return isEqual;
  }
}
