import 'dart:convert';

import 'package:flutter/foundation.dart' as Foundation;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

// https://github.com/flutter/flutter/issues/33641
class Utils {
  static bool get isDebug => Foundation.kDebugMode;

  static Image fallbackImage({
    double height,
    double width,
    BoxFit fit = BoxFit.cover,
    String base64Image,
  }) {
    if (base64Image != null) {
      var str = base64Image.contains(',')
          ? base64Image.substring(base64Image.split(',')[0].length + 1)
          : base64Image;

      var bytes = base64.decode(base64.normalize(str));
      return Image.memory(
        bytes,
        fit: BoxFit.cover,
        height: height,
        width: width,
        gaplessPlayback: true,
      );
    }

    return Image.asset(
      'assets/images/fallback.jpg',
      fit: BoxFit.cover,
      height: height,
      width: width,
      gaplessPlayback: true,
    );
  }

  static int doubleToInt(dynamic data) {
    return double.parse(data.toString()).toInt();
  }

  static String formatDate(String textDate, [String format = 'dd MMMM yyyy']) {
    return textDate == null
        ? '-'
        : DateFormat(format).format(DateTime.parse(textDate));
  }

  static String formatDateTime(String textDate,
      [String format = 'dd MMMM yyyy HH:ss']) {
    return textDate == null
        ? '-'
        : DateFormat(format).format(DateTime.parse(textDate));
  }

  static String formatMoney(int money) {
    return NumberFormat.currency(locale: 'id').format(money);
  }

  static String formatTime(String textDate, [String format = 'HH:mm']) {
    return textDate == null
        ? '-'
        : DateFormat(format).format(DateTime.parse(textDate));
  }

  static Image imageMemoryBase64(
    String text, {
    String fallbackImagePath,
    double height,
    double width,
  }) {
    if (text == null) {
      return Image.asset(fallbackImagePath ?? 'assets/images/fallback.jpg',
          fit: BoxFit.cover);
    }

    var str = text.contains(',')
        ? text.substring(text.split(',')[0].length + 1)
        : text;

    var bytes = base64.decode(base64.normalize(str));

    return Image.memory(
      bytes,
      fit: BoxFit.cover,
      height: height,
      width: width,
      gaplessPlayback: true,
    );
  }

  static Image imageMemoryBloob(String text,
      {double height,
      double width,
      String fallbackImagePath,
      BoxFit fit = BoxFit.cover}) {
    if (text == null) {
      return Image.asset(
        fallbackImagePath == '' || fallbackImagePath == null
            ? 'assets/images/fallback.jpg'
            : fallbackImagePath,
        fit: BoxFit.cover,
        height: height,
        width: width,
      );
    } else {
      var str = text.contains(',')
          ? text.substring(text.split(',')[0].length + 1)
          : text;

      var bytes = base64.decode(base64.normalize(str));

      return Image.memory(
        bytes,
        fit: fit,
        height: height,
        width: width,
        gaplessPlayback: true,
      );
    }
  }

  static ImageProvider memoryImageBase64(
    String text, {
    double height,
    double width,
    String fallback,
  }) {
    if (text == null) {
      return AssetImage(fallback ?? 'assets/images/fallback.jpg');
    }

    var str = text.contains(',')
        ? text.substring(text.split(',')[0].length + 1)
        : text;

    var bytes = base64.decode(base64.normalize(str));

    return Image.memory(
      bytes,
      height: height,
      width: width,
      fit: BoxFit.cover,
      gaplessPlayback: true,
    ).image;
  }

  static MemoryImage memoryImageBloob(String text) {
    var bytes = base64.decode(base64.normalize(text));
    return Image.memory(
      bytes,
      fit: BoxFit.cover,
      gaplessPlayback: true,
    ).image;
  }

  static bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  static String addParam(String url, String param, String value) {
    if (value != null) {
      if (!url.contains('?')) url += '?';
      if (url.contains('=')) url += '&';

      return url += '$param=$value';
    }

    return url;
  }
}
