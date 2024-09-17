import 'package:intl/intl.dart';

class DateTimeUtil {
  static DateTime getFirstDayOfCalendar(DateTime date) {
    DateTime firstDay = _getFirstDayOfMonth(date);
    int difference = firstDay.weekday == 7 ? 0 : firstDay.weekday;
    DateTime startOfCalendar = firstDay.subtract(Duration(days: difference));

    return startOfCalendar;
  }

  static DateTime getLastDayOfCalendar(DateTime date) {
    DateTime lastDay = _getLastDayOfMonth(date);
    int difference = lastDay.weekday == 7 ? 6 : 6 - lastDay.weekday;
    DateTime endOfCalendar = lastDay.add(Duration(days: difference));

    return endOfCalendar
        .add(const Duration(hours: 23, minutes: 59, seconds: 59));
  }

  static DateTime _getFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  static DateTime _getLastDayOfMonth(DateTime date) {
    DateTime nextMonth = DateTime(date.year, date.month + 1, 1);
    return nextMonth.subtract(const Duration(days: 1));
  }

  static bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return false;
    }

    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  static String convertFromDateTimeToKorean(DateTime date) {
    return DateFormat('yyyy년 MM월 dd일 HH:mm').format(date);
  }

  static String convertFromDateTimeToCalendarForm(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static DateTime convertFromCalendarFormToDateTime(String calendarForm) {
    return DateFormat('yyyy-MM-dd').parse(calendarForm.toString());
  }

  static bool isSameMonth(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month;
  }

  static int getTotalDayByDateTime(DateTime date) {
    int monthDaySum = 0;

    for (int i = 1; i < date.month; i++) {
      monthDaySum += DateTime(date.year, i + 1, 0).day;
    }

    return date.year * 365 + monthDaySum + date.day;
  }

  static int getTotalDayByCalendarForm(String dateStr) {
    DateTime date = DateFormat('yyyy-MM-dd').parse(dateStr);

    int monthDaySum = 0;

    for (int i = 1; i < date.month; i++) {
      monthDaySum += DateTime(date.year, i + 1, 0).day;
    }

    return date.year * 365 + monthDaySum + date.day;
  }
}
