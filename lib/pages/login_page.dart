import 'package:flutter/material.dart';
import 'package:modern_login/components/my_button.dart';
import 'package:modern_login/components/my_text_field.dart';
import 'package:modern_login/components/sqaure_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernamecController = TextEditingController();
  final passwordController = TextEditingController();
  // sign user in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              // Welcome back, you've been missed!,
              Text(
                "Welcome back you've been missed",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              // username textfield
              MyTextfield(
                controller: usernamecController,
                hintText: "Username",
                obsecureText: false,
              ),
              const SizedBox(height: 25),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),
              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Forgot Password?"),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 25),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              // google + apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(
                    imagePath: "lib/images/google.png",
                  ),
                  SizedBox(width: 10),
                  SquareTile(
                    imagePath: "lib/images/apple.png",
                  )
                ],
              ),
              const SizedBox(height: 50),

              // not a member? register now
              // ignore: prefer_const_literals_to_create_immutables
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text("Not a member?",style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(width: 4),
                  const Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
