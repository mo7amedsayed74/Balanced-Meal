import 'package:flutter/material.dart';

extension MyNavigator on BuildContext {
  void push({required Widget goTo}) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => goTo),
    );
  }

  void pushReplacement({required Widget goTo}) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => goTo),
    );
  }
}
