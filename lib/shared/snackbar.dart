import 'package:flutter/material.dart';

class FlutterSnackBar {
  static final FlutterSnackBar instance = FlutterSnackBar();

  final GlobalKey<ScaffoldMessengerState> flutterScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackBarError(String msg) {
    flutterScaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      backgroundColor: const Color.fromARGB(255, 202, 15, 15),
      content: Text(msg,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15, color: Colors.white)),
      duration: const Duration(seconds: 4),
    ));
  }

  void showSnackBarSucess(String msg) {
    flutterScaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        msg,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      duration: const Duration(seconds: 4),
    ));
  }
}
