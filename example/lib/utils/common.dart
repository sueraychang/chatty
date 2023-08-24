import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

bool isDebug() {
  if (kDebugMode || kProfileMode) {
    return true;
  } else {
    return false;
  }
}

bool useEmulator = false;

const Locale cht = Locale.fromSubtags(
    languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW');