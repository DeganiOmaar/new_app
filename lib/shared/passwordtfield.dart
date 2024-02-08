import 'package:flutter/material.dart';

class PasswordTField extends StatefulWidget {
  final String tFieldTtitle;
  final String tFieldContent;
  const PasswordTField({super.key, required this.tFieldTtitle, required this.tFieldContent});

  @override
  State<PasswordTField> createState() => _PasswordTFieldState();
}

class _PasswordTFieldState extends State<PasswordTField> {
  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.tFieldTtitle, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
                 const  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.visibility_off, color: Colors.grey[500],)),
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: widget.tFieldContent,
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