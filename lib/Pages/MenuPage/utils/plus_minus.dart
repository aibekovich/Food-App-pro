import 'package:flutter/material.dart';

class PlusMinusButton extends StatelessWidget {
  const PlusMinusButton({
    Key? key,
    required this.btcolor,
    required this.icon,
  }) : super(key: key);

  final Color btcolor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: btcolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: icon,
      ),
    );
  }
}
