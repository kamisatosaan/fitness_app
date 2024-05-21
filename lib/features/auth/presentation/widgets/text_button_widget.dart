import 'package:new_bloc_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Widget screen;

  const TextButtonWidget({
    super.key,
    required this.text,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: RichText(
        text: TextSpan(
          text: "Don't have account?\n",
          style: const TextStyle(
            color: AppPallete.greyColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: text,
              style: const TextStyle(
                color: AppPallete.backgroundColor1,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
