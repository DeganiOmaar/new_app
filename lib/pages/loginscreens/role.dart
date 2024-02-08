// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_app/constant/colors.dart';
import 'package:new_app/pages/loginscreens/condidatregister.dart';
import 'package:new_app/shared/backarrow.dart';
import 'package:new_app/shared/rolebutton.dart';

class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: BackArrow(),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Pour procéder à la création de votre compte, veuillez indiquer le rôle qui vous correspond.",
              style: TextStyle(
                  color: darkColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            RoleButton(buttonRole: "Condidat", onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>CondidatRegister())); },),
            const SizedBox(
              height: 20,
            ),
            RoleButton(buttonRole: "Société", onPressed: () {  },),
            const SizedBox(
              height: 20,
            ),
            RoleButton(buttonRole: "Employeur individuel", onPressed: () {  },)
          ],
        ),
      ),
    ));
  }
}
