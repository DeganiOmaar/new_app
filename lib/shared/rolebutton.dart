import 'package:flutter/material.dart';
import 'package:new_app/constant/colors.dart';

class RoleButton extends StatelessWidget {
  final String buttonRole;
  VoidCallback onPressed;
   RoleButton({super.key, required this.buttonRole, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              Expanded(
                child: ElevatedButton(
                      onPressed: onPressed,
                      
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                         padding: const EdgeInsets.all(12),
                          elevation: 0,
                          backgroundColor: Colors.white .withOpacity(0.1),
                          foregroundColor: Colors.black,
                          side: const BorderSide(
                            width: 1.0,
                            color: mainColor,
                          )),
                      child:  Text(buttonRole, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
              ),
            ],
          );
  }
}