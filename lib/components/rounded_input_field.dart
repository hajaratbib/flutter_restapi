import 'package:flutter/material.dart';
import 'package:infosat/components/text_field_container.dart';
import 'package:infosat/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon ,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
