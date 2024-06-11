import 'package:flutter/material.dart';

extension SpacerWidget on num {
  Widget get heightBox => SizedBox(
        height: double.parse(toString()),
      );

  Widget get widthBox => SizedBox(
        width: double.parse(toString()),
      );
}
