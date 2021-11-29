import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/view/login/provider/google_signin.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  const GoogleSignupButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(4),
        child: OutlinedButton.icon(
          label: const Text(
            'Sign In With Google',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),

          //shape: const StadiumBorder(),
          //padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //highlightedBorderColor: Colors.black,
          //borderSide: const BorderSide(color: Colors.black),
          icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
          onPressed: () {
            final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
            provider.login();
          },
        ),
      );
}
