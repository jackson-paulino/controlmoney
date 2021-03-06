import 'package:controlmoney/app/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final bool ativeButton;
  final Function onPressed;

  const CustomIconButton(
      {Key key, this.icon, this.text, this.ativeButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
                color: ativeButton ? AppColors.primary : Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(25)),
            child: IconButton(icon: icon, onPressed: onPressed)),
        Container(
            width: 66,
            margin: EdgeInsets.only(top: 3),
            child: Text(text, textAlign: TextAlign.center)),
      ],
    );
  }
}
