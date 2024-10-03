import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isDisabled = false});

  final String text;
  final Function onPressed;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: isDisabled
              ? null
              : () {
                  onPressed();
                },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text(
                text,
                style: const TextStyle(
                    wordSpacing: 4,
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))),
    );
  }
}
