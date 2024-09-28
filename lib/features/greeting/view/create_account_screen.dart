import 'package:detective_goat/widgets/outline_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Create an account",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  // height: 50,
                  child: SvgPicture.asset(
                    "assets/images/line.svg",
                  ),
                ),
              ],
            ),
            Image.asset("assets/images/detective.png"),
            const Text(
              " so I can help you to find out how are you feeling.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            OutlineButtonWidget(
              text: "Sign up with Google",
              onPressed: () {},
              height: 60,
              asset: "assets/images/google.svg",
            ),
            OutlineButtonWidget(
              text: "Sign up with Facebook",
              onPressed: () {},
              height: 60,
              asset: "assets/images/facebook.svg",
            ),
            OutlineButtonWidget(
                text: "Sign up with Email", onPressed: () {}, height: 60),
            const SizedBox(),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
