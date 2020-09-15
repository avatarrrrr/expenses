import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final Function onSubmitted;
  final TextEditingController controller;
  final bool keyboardNumber;

  AdaptativeTextField({
    this.label,
    this.onSubmitted,
    this.controller,
    this.keyboardNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              onSubmitted: onSubmitted,
              placeholder: label,
              controller: controller,
              keyboardType: keyboardNumber
                  ? TextInputType.numberWithOptions(decimal: true)
                  : null,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            onSubmitted: onSubmitted,
            decoration: InputDecoration(
              labelText: label,
            ),
            controller: controller,
            keyboardType: keyboardNumber
                ? TextInputType.numberWithOptions(decimal: true)
                : null);
  }
}
