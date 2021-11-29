import 'package:flutter/material.dart';
import 'package:todolistapp/view/login/widget/background_painter.dart';
import 'package:todolistapp/view/login/widget/google_signup_button_widget.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: const Text(
                'Welcome Back To MyApp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Spacer(),
          const GoogleSignupButtonWidget(),
          const SizedBox(height: 12),
          const Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          const Spacer(),
        ],
      );
}
