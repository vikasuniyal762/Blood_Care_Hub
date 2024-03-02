import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;

  const CustomAlertDialog({
    required this.title,
    required this.content,
    required this.onConfirm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text('No'),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text('Yes'),
        ),
      ],
    );
  }
}
