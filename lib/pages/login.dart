import 'package:financial_tracker/components/myButton.dart';
import 'package:financial_tracker/components/myTextField.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Icon(
            Icons.lock_person_outlined,
            size: 100,
            color: Theme.of(context).colorScheme.onSurface,
          ),

          const SizedBox(
            height: 15,
          ),

          Text(
            "Wallet Dashboard",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 32, color: Theme.of(context).colorScheme.onSurface),
          ),

          // Username or Email Text
          Mytextfield(
              controller: usernameController,
              hintText: "Username or email",
              obscureText: false),

          // Password
          Mytextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),

          // Sign in button
          Mybutton(onTap: () {}, text: "Sign in"),

          const SizedBox(
            height: 25,
          ),

          // Register / Sign up
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Don't have an account? "),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),

          const SizedBox(
            height: 25,
          ),

          // Google Apple Logos
        ],
      ),
    );
  }
}
