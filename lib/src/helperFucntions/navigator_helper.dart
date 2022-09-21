import 'package:flutter/material.dart';
toNext({required BuildContext context, required Widget widget}) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => widget));
}
toRemoveAll({required BuildContext context, required Widget widget}) {
  return Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => widget), (c) => false);
}

