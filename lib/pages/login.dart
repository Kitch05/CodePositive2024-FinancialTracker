import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            Icons.lock_outline_rounded,
            size: 120,
          ),

          // Username or Email Text
          // Input Text
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                label: Text("Username or Email"),
                labelStyle:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
                hoverColor: Theme.of(context).colorScheme.onSurface),
          ),

          TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: InputDecoration(
              label: Text("Password"),
              labelStyle:
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
              hoverColor: Theme.of(context).colorScheme.onSurface,
            ),
          ),

          // Sign in button
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Sign in",
              textAlign: TextAlign.center,
            ),
          ),

          // Register / Sign up
          Text("Don't have an account? Sign up")

          // or <LINE>

          // Google Apple Logos
        ],
      ),
    );
  }
}
