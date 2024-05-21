import 'package:flutter/material.dart';
import 'package:new_bloc_app/core/theme/app_pallete.dart';

class NewTextButtonWidget extends StatelessWidget {
  final String text;
  final Widget onTap;

  const NewTextButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onTap),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "Don't have account?",
            style: TextStyle(
              color: AppPallete.greyColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: AppPallete.backgroundColor1,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
