import 'package:detective_goat/features/greeting/view/login_screen.dart';
import 'package:detective_goat/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/detective.png',
              height: 250,
              width: 250,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'welcome to',
              ),
              Text(
                'Detective Goat',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 2,
                  ),
                  "Hello, I’m detective GOAT and today I’m a detective for you to find what are you feeling."),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomButtonWidget(
              text: "LET'S FIND OUT",
              onPressed: () {
                Get.to(() => const LoginScreen());
              }),
        ),
      ],
    );
  }
}
