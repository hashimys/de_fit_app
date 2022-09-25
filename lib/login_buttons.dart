import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class LogInButton extends StatelessWidget {
  LogInButton(
      {Key? key,
        required this.social,
        required this.onPressed,
        required this.signType,
        required this.socialType})
      : super(key: key);

  Buttons social;
  Function onPressed;
  double heights = 20;
  double widths = 300;
  String signType;
  String socialType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: SignInButton(
              social,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              text: 'Sign $signType with $socialType',
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
