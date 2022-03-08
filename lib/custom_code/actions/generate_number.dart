// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

int generateNumber() {
  // Add your function code here!

  int secretNumber = math.Random().nextInt(20) + 1;

  return secretNumber;
}
