import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/view/login/provider/google_signin.dart';
import 'package:todolistapp/view/login/widget/background_painter.dart';
import 'package:todolistapp/view/login/widget/logged_in_widget.dart';
import 'package:todolistapp/view/login/widget/sign_up_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return LoggedInWidget();
              } else {
                return const SignUpWidget();
              }
            },
          ),
        ),
      );

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          const Center(child: CircularProgressIndicator()),
        ],
      );
}
