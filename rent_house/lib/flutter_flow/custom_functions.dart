import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

bool? showSearchResult(
  String textSearchFor,
  String textSearchIn,
  String textSearchIn2,
  String textSearchIn3,
  String textSearchIn4,
  double textSearchInInteger,
) {
  if (textSearchFor.isEmpty) {
    return true;
  }

  final words = textSearchFor.toLowerCase().split(' ');

  bool matchAllWords = true;
  for (final word in words) {
    if (!(textSearchIn.toLowerCase().contains(word) ||
        textSearchIn2.toLowerCase().contains(word) ||
        textSearchIn3.toLowerCase().contains(word) ||
        (textSearchIn4 != null && textSearchIn4.toLowerCase().contains(word)) ||
        (textSearchInInteger != null &&
            textSearchInInteger.toString().contains(word)))) {
      matchAllWords = false;
      break;
    }
  }

  if (matchAllWords) {
    return true;
  }

  // Check if textSearchFor matches any field exactly
  if (textSearchIn.toLowerCase() == textSearchFor.toLowerCase() ||
      textSearchIn2.toLowerCase() == textSearchFor.toLowerCase() ||
      textSearchIn3.toLowerCase() == textSearchFor.toLowerCase() ||
      (textSearchIn4 != null &&
          textSearchIn4.toLowerCase() == textSearchFor.toLowerCase()) ||
      (textSearchInInteger != null &&
          textSearchInInteger.toString().toLowerCase() ==
              textSearchFor.toLowerCase())) {
    return true;
  }

  // Check if textSearchFor is a prefix of any field
  if (textSearchIn.toLowerCase().startsWith(textSearchFor.toLowerCase()) ||
      textSearchIn2.toLowerCase().startsWith(textSearchFor.toLowerCase()) ||
      textSearchIn3.toLowerCase().startsWith(textSearchFor.toLowerCase()) ||
      (textSearchIn4 != null &&
          textSearchIn4
              .toLowerCase()
              .startsWith(textSearchFor.toLowerCase())) ||
      (textSearchInInteger != null &&
          textSearchInInteger
              .toString()
              .toLowerCase()
              .startsWith(textSearchFor.toLowerCase()))) {
    return true;
  }

  return false;
}

bool? showSearchResultUser(
  String textSearchFor,
  String textSearchIn,
  String textSearchIn2,
  double textSearchInInteger,
) {
  {
    if (textSearchFor.isEmpty) {
      return true;
    }

    final words = textSearchFor.toLowerCase().split(' ');

    bool matchAllWords = true;
    for (final word in words) {
      if (!(textSearchIn.toLowerCase().contains(word) ||
          textSearchIn2.toLowerCase().contains(word) ||
          (textSearchInInteger != null &&
              textSearchInInteger.toString().contains(word)))) {
        matchAllWords = false;
        break;
      }
    }

    if (matchAllWords) {
      return true;
    }

    // Check if textSearchFor matches any field exactly
    if (textSearchIn.toLowerCase() == textSearchFor.toLowerCase() ||
        textSearchIn2.toLowerCase() == textSearchFor.toLowerCase() ||
        (textSearchInInteger != null &&
            textSearchInInteger.toString().toLowerCase() ==
                textSearchFor.toLowerCase())) {
      return true;
    }

    // Check if textSearchFor is a prefix of any field
    if (textSearchIn.toLowerCase().startsWith(textSearchFor.toLowerCase()) ||
        textSearchIn2.toLowerCase().startsWith(textSearchFor.toLowerCase()) ||
        (textSearchInInteger != null &&
            textSearchInInteger
                .toString()
                .toLowerCase()
                .startsWith(textSearchFor.toLowerCase()))) {
      return true;
    }

    return false;
  }
}
