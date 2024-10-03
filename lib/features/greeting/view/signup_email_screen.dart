import 'package:detective_goat/features/greeting/controller/agree_terms_controller.dart';
import 'package:detective_goat/widgets/custom_button_widget.dart';
import 'package:detective_goat/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupEmailScreen extends StatefulWidget {
  const SignupEmailScreen({super.key});

  @override
  State<SignupEmailScreen> createState() => _SignupEmailScreenState();
}

class _SignupEmailScreenState extends State<SignupEmailScreen> {
  @override
  Widget build(BuildContext context) {
    final agreeController = Get.put(AgreeTermsController());

    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up With Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset('assets/images/login_account.png'),
              ),
              const FormContainerWidget(
                hintText: 'Email Address',
              ),
              const FormContainerWidget(
                hintText: 'Password',
                isPasswordField: true,
              ),
              const FormContainerWidget(
                hintText: 'Confirm Password',
                isPasswordField: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Checkbox(
                        value: agreeController.isAgreed.value,
                        onChanged: (value) {
                          agreeController.isAgreed.value = value!;
                        }),
                  ),
                  const Text("I agree to terms & conditions"),
                ],
              ),
              const Text(
                  style: TextStyle(fontSize: 12),
                  "By continuing, I agree to Alan Mind's Terms of Service. I also consent to the use of my app usage data to improve MindPeers and the relevancy of advertising campaigns for the app. Alan Mind will never use your journal entries: only you can read them. See our Privacy Policy for more information"),
              Obx(() => CustomButtonWidget(
                    text: "Sign Up",
                    onPressed: () {},
                    isDisabled: !agreeController.isAgreed.value,
                  )),
              const SizedBox(),
              const SizedBox(),
              const SizedBox(),
            ],
          ),
        ));
  }
}
