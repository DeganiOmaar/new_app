import 'package:flutter/material.dart';
import 'package:new_app/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  VoidCallback  onPressed;
   CustomButton({super.key, required this.buttonTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                           onPressed: onPressed,
                           style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(mainColor),
                             padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                             shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                          ),
                           child: Text(buttonTitle, style: const TextStyle(fontSize: 19, color: Colors.white),),
                        );
  }
}