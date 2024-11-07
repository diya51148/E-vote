import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? parseJsonData(String jsonData) {
  // Split jsonData string "\r\n"
  List<String> splitData = jsonData.split("\r\n");
  if (splitData.length > 1) {
    return splitData[1];
  } else {
    return null;
  }
}

int? days(DateTime? endDate) {
  // Calculate the number of days to end from current date and time
  if (endDate == null) {
    return null;
  }
  final now = DateTime.now();
  final difference = endDate.difference(now);
  return difference.inDays;
}

int? hours(DateTime? endTime) {
  // Get the number of hours left to end from end time ignoring the days
  if (endTime == null) {
    return null;
  }
  final now = DateTime.now();
  final difference = endTime.difference(now);
  final hours = difference.inHours % 24;
  return hours;
}

int? minutes(DateTime? endTime) {
  if (endTime == null) {
    return null;
  }
  final now = DateTime.now();
  final difference = endTime.difference(now);
  final hours = difference.inMinutes % 60;
  return hours;
}

int? seconds(DateTime? endTime) {
  // Get the seconds to endtime from currenttime ignoring day,hour and minutes
  if (endTime == null) {
    return null;
  }
  final now = DateTime.now();
  final difference = endTime.difference(now);
  final seconds = difference.inSeconds % 60;
  return seconds;
}

double? convertNumToDec(
  int? total,
  int? single,
) {
  // Get the percentage where total is givwn and out of which a single get
  if (total == null || single == null || total == 0) {
    return null;
  }
  return (single / total) * 100;
}

double? progressBarPer(
  int? total,
  int? single,
) {
  // Get the percentage where total is givwn and out of which a single get
  if (total == null || single == null || total == 0) {
    return null;
  }
  return ((single / total) * 100) / 100;
}
