import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({required String msg, required bool isError, Toast? length}) =>
    Fluttertoast.showToast(
      msg: msg,
      toastLength: length ?? Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 18.0,
    );
