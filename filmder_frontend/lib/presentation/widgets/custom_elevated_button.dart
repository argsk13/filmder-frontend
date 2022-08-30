// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.startColor,
    required this.endColor,
    required this.textColor,
    this.onPressed,
  }) : super(key: key);
  final String label;
  final Color startColor;
  final Color endColor;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withAlpha(50),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(2, 2),
          ),
        ],
        gradient: LinearGradient(colors: [startColor, endColor]),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          fixedSize: const Size(200, 40),
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
