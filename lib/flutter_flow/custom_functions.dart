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

int? dateTimeToMilliseconds(DateTime? dataTime) {
  //
  int dateTimeToMilliseconds(DateTime dateTime) {
    // Retorna o número de milissegundos desde a "Época Unix" (1º Jan 1970).
    return dateTime.millisecondsSinceEpoch;
  }
}

DateTime? calculateDeadline(int? durationMs) {
  final safeDuration = durationMs ?? 0;
  return DateTime.now().add(Duration(milliseconds: safeDuration));
}
