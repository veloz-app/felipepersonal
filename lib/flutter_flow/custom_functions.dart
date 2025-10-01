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

DateTime? calculateDeadline(int? durationMs) {
  final safeDuration = durationMs ?? 0;
  return DateTime.now().add(Duration(milliseconds: safeDuration));
}

String formatTimeDifference(DateTime? endDate) {
  // 1. Verifica se a data final é nula (se o backend ainda não carregou)
  if (endDate == null) {
    return '0d 00:00:00'; // Retorna 0 para não quebrar a tela
  }

  // 2. Calcula a diferença de tempo (Duration)
  final timeDifference = endDate.difference(DateTime.now());

  // 3. Garante que o tempo não é negativo (se o prazo já passou)
  if (timeDifference.isNegative) {
    return '0d 00:00:00';
  }

  // 4. Extrai as unidades de tempo
  final days = timeDifference.inDays;
  final hours = timeDifference.inHours.remainder(24);
  final minutes = timeDifference.inMinutes.remainder(60);
  final seconds = timeDifference.inSeconds.remainder(60);

  // 5. Formata a string de saída (com padding para 2 dígitos)
  final formattedHours = hours.toString().padLeft(2, '0');
  final formattedMinutes = minutes.toString().padLeft(2, '0');
  final formattedSeconds = seconds.toString().padLeft(2, '0');

  // 6. Retorna o formato final: "Xd HH:MM:SS"
  return '${days}d $formattedHours:$formattedMinutes:$formattedSeconds';
}
