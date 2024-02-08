// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_app/constant/colors.dart';
import 'package:new_app/pages/loginscreens/role.dart';
import 'package:new_app/pages/userspages/screens.dart';
import 'package:new_app/shared/custombutton.dart';
import 'package:new_app/shared/customtextfield.dart';
import 'package:new_app/shared/passwordtfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                  color: darkColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 25.0),
                child: Column(
                  children: [
                    Text(
                      "Connectez-vous avec votre Adresse e-mail",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ravi de vous revoir ! Retrouvez vos travaux et augmentez vos revenus.",
                      style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  CustomTField(
                      tFieldTitle: "Email",
                      tFieldContent: "Entrer votre adress email"),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordTField(
                      tFieldTtitle: "Mot de passe",
                      tFieldContent: "Entrer votre mot de passe"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Mot de passe oubliée?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                              buttonTitle: "Connexion", onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screens()));
                              })),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vous n'avez pas du compte? ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Role()));
                        },
                        child: Text(
                          "Créer Votre compte",
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
