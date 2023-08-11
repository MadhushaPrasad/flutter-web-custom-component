import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: InkWell(
                onTap: () {
                  print("Red Button");
                },
                child: Container(
                  width: 200,
                  height: 80,
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                    child: Text("Blue Button",
                        style: TextStyle(
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
