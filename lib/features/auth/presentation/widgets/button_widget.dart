import 'package:new_bloc_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? borderColor;
  final Color color;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderColor,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppPallete.backgroundColor1,
            AppPallete.backgroundColor2,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(30.0),
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
                width: 1,
              )
            : null,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
