import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle? bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static TextStyle? subtitle2(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2;
  }

  static TextStyle? caption(BuildContext context) {
    return Theme.of(context).textTheme.caption;
  }

  static TextStyle? bodyTextW600(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontWeight: FontWeight.w600);
  }

  static TextStyle? bodyTextBold(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontWeight: FontWeight.bold);
  }
}
