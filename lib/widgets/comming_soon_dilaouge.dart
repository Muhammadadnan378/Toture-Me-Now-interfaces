import 'package:flutter/material.dart';

class ComingSoonDialog extends StatelessWidget {
  final String title;
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final Widget? icon; // Optional icon to display in the dialog

  const ComingSoonDialog({
    super.key,
    this.title = "Coming Soon",
    this.message = "This feature is under development and will be available soon.",
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.icon = const Icon(Icons.comment),
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: textColor, fontSize: 18),
          ),
          if (icon != null) icon!,
        ],
      ),
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Okay",
            style: TextStyle(color: textColor),
          ),
        ),
      ],
    );
  }
}
