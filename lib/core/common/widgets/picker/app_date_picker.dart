import 'package:flutter/material.dart';
import 'package:shoppe/core/configs/app_configs.dart';

class AppDatePicker {
  static final _now = DateTime.now();
  static final _firstDateDefault =
      DateTime(_now.year - 100, _now.month, _now.day);
  static final _lastDateDefault =
      DateTime(_now.year + 100, _now.month, _now.day);
  static final _timeNow = TimeOfDay(hour: _now.hour, minute: _now.minute);

  static Future<DateTime?> pickDate(
    BuildContext context, {
    DateTime? minDate,
    DateTime? maxDate,
    DateTime? initialDate,
  }) async {
    final firstDate = minDate ?? _firstDateDefault;
    final lastDate = maxDate ?? _lastDateDefault;
    final DateTime? picker = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      currentDate: _now,
      // locale: AppConfigs.defaultLanguage.local,
    );
    return picker;
  }

  static Future<TimeOfDay?> pickTime(
    BuildContext context, {
    TimeOfDay? initialTime,
  }) {
    final initial = initialTime ?? _timeNow;
    return showTimePicker(
      context: context,
      initialTime: initial,
    );
  }
}
