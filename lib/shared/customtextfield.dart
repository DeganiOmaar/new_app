import 'package:flutter/material.dart';

class CustomTField extends StatelessWidget {
  final String tFieldTitle;
  final String tFieldContent;
  const CustomTField({super.key, required this.tFieldTitle, required this.tFieldContent});

  @override
  Widget build(BuildContext context) {
    return               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tFieldTitle, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                      cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: tFieldContent,
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 220, 220, 220),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 220, 220, 220),
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    ),
                  ),
                ],
              );
  }
}