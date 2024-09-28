import 'package:detective_goat/widgets/custom_button_widget.dart';
import 'package:detective_goat/widgets/form_container_widget.dart';
import 'package:detective_goat/widgets/outline_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 220,
                width: double.infinity,
                child: Image.asset('assets/images/login_account.png'),
              ),
              const FormContainerWidget(
                hintText: 'Email Address',
              ),
              const SizedBox(
                height: 20,
              ),
              const FormContainerWidget(
                hintText: 'Password',
                isPasswordField: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonWidget(
                text: 'Log In',
                onPressed: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 2.8,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  const Text('or'),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              OutlineButtonWidget(
                asset: "assets/images/google.svg",
                text: "Login with Google",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              OutlineButtonWidget(
                asset: "assets/images/facebook.svg",
                text: "Login with Facebook",
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
