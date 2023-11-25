import 'package:flutter/material.dart';

class NotificationModel {
  final String title;
  final String date;
  final String subject;
  Widget content;

  NotificationModel({
    required this.title,
    required this.date,
    required this.subject,
    required this.content,
  });
}
