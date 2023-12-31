import 'package:flutter/material.dart';
import 'package:minimalsocial/components/my_button.dart';
import 'package:minimalsocial/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              //app name
              Text(
                "M I N I N M A L",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              //email textfield
              MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController),
              const SizedBox(
                height: 10,
              ),
              //password textfield

              MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Pssword?", style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                ],
              ),

 const SizedBox(
                height: 10,
              ),
              //sign in button
MyButton(text: "Login", onTap: (){},)
              //don't have an acount? Register here
            ],
          ),
        ),
      ),
    );
  }
}
