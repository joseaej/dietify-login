import 'package:flutter/material.dart';
import 'package:logindietify/utils/theme.dart';
import '../../widgets/components/form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool? isChecked = false;
  String? error;

  @override
  Widget build(BuildContext context) {
    const inputBorder = BorderRadius.vertical(
      bottom: Radius.circular(10.0),
      top: Radius.circular(20.0),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login to your account",
              style: TextStyle(color: secondaryColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            form(
              _emailController,
              "Email",
              Icon(Icons.email, color: secondaryColor),
              inputBorder,
              EdgeInsets.fromLTRB(50, 30, 50, 20),
              isPassword: false,
            ),
            form(
              _passwordController,
              "Password",
              Icon(Icons.lock_outline_rounded, color: secondaryColor),
              inputBorder,
              EdgeInsets.fromLTRB(50, 10, 50, 20),
              isPassword: true,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isChecked,
                  checkColor: textDark,
                  activeColor: secondaryColor,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                Text(
                  "Remember",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: _buttonLogin(context),
            ),
            _rowlinea,
            _rowiconlogin,
            _createaccount,
          ],
        ),
      ),
    );
  }

  TextButton _buttonLogin(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(secondaryColor),
        minimumSize: MaterialStateProperty.all(Size(300, 50)),
      ),
      onPressed: () {},
      child: Text(
        "Login",
        style: TextStyle(
          color: textDark,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding get _rowlinea => Padding(
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Row(
          children: [
            Expanded(
              child: Divider(
                color: darkGray,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "or",
                style: TextStyle(color: darkGray),
              ),
            ),
            Expanded(
              child: Divider(
                color: darkGray,
                thickness: 1,
              ),
            ),
          ],
        ),
      );

  Row get _rowiconlogin => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: onGooglePresed,
          icon: Image.asset(
            "assets/icons/google.png",
            cacheWidth: 50,
            cacheHeight: 50,
          ),
        ),
      ),
      IconButton(
        onPressed: onFacebookPresed,
        icon: Image.asset(
          "assets/icons/facebook.png",
          cacheWidth: 50,
          cacheHeight: 50,
        ),
      ),
    ],
  );

  Row get _createaccount => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Create account here:",
        style: TextStyle(color: darkGray),
      ),
      TextButton(
        onPressed: onCreatePressed,
        child: Text(
          "Sign Up",
          style: TextStyle(color: secondaryColor),
        ),
      ),
    ],
  );

  void onGooglePresed() async {
  }

  void onFacebookPresed() {
  }

  void onCreatePressed() {
  }
}
