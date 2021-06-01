import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveDialogCancelButton extends StatelessWidget {
  const ResponsiveDialogCancelButton({this.text, required this.onPressed});

  final String? text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final iosDialogActionButton = CupertinoDialogAction(
        child: Text(
          text ?? 'キャンセル',
        ),
      onPressed: onPressed,
      isDefaultAction: true,
    );

    final androidDialogActionButton = TextButton(
        onPressed: onPressed,
        child: Text(
          text ?? 'キャンセル'
        )
    );

    return Platform.isIOS ? iosDialogActionButton : androidDialogActionButton;
  }
}