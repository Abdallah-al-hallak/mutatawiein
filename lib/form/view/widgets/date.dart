import 'package:flutter/material.dart';

Future<DateTime> selectDate(BuildContext context, selectedDate) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null && picked != selectedDate) selectedDate = picked;
  return selectedDate;
}
