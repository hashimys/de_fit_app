import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'login_buttons.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/logo.png',
          width: 100,
          height: 100,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            LogInButton(
              social: Buttons.Google,
              onPressed: () {},
              signType: 'In',
              socialType: 'Google',
            ),
            LogInButton(
              social: Buttons.Facebook,
              onPressed: () {},
              signType: 'In',
              socialType: 'Facebook',
            ),
            LogInButton(
              social: Buttons.Apple,
              onPressed: () {},
              signType: 'In',
              socialType: 'Apple',
            ),
            LogInButton(
              social: Buttons.Twitter,
              onPressed: () {},
              signType: 'In',
              socialType: 'Twitter',
            ),
            LogInButton(
              social: Buttons.Email,
              onPressed: () {},
              signType: 'In',
              socialType: 'Email',
            ),
            Divider(
              height: 20,
            ),
            Column(
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have Account?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LogInButton(
                  social: Buttons.Email,
                  onPressed: () {},
                  signType: 'Up',
                  socialType: 'Email',
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
