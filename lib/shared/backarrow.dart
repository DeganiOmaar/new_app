import 'package:flutter/material.dart';
import 'package:new_app/constant/colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: darkColor),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.all(2.0),
                        child:  Icon(
                          Icons.arrow_back,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  );
  }
}