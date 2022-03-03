import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

int generateNumber() {
  // Add your function code here!

  int secretNumber = math.Random().nextInt(20) + 1;

  return secretNumber;
}
