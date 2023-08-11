import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.btnLabel, required this.btnColor});

  String btnLabel;
  Color btnColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: btnColor,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: InkWell(
                onTap: () {
                  print("$btnLabel Clicked");
                },
                child: Container(
                  width: 200,
                  height: 80,
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(btnLabel,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
