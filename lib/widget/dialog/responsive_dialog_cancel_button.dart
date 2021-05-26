import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveDialogCancelButton extends StatelessWidget {
  const ResponsiveDialogCancelButton({this.text, this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final iosDialogActionButton = CupertinoDialogAction(
        child: Text(
          text,
        ),
      onPressed: onPressed,
      isDefaultAction: true,
    );

    final androidDialogActionButton = TextButton(
        onPressed: onPressed,
        child: Text(
          text
        )
    );

    return Platform.isIOS ? iosDialogActionButton : androidDialogActionButton;
  }
}