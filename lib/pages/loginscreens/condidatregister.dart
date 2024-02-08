// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/constant/colors.dart';
import 'package:new_app/pages/loginscreens/login.dart';
import 'package:new_app/pages/userspages/screens.dart';
import 'package:new_app/shared/custombutton.dart';
import 'package:new_app/shared/customtextfield.dart';
import 'package:new_app/shared/passwordtfield.dart';

class CondidatRegister extends StatefulWidget {
  const CondidatRegister({super.key});

  @override
  State<CondidatRegister> createState() => _CondidatRegisterState();
}

class _CondidatRegisterState extends State<CondidatRegister> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.22,
                  decoration: BoxDecoration(
                      color: darkColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 25.0, left: 25.0, top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Créer votre compte",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Élaborez votre tout nouveau profil d'identification.",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
               const  SizedBox(height: 30,), 
               Container(
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor, ),
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(60)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: SvgPicture.asset("assets/images/gallery.svg", width: 25,height: 25,color: darkColor,),
                ),
               ), 
               SizedBox(height: 15,), 
               Text("Choisir votre photo", style: TextStyle(fontWeight: FontWeight.w700, color: mainColor, fontSize: 16),), 
               SizedBox(height: 25,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:10.0),
                 child: Column(
                  children: [
                   Row(
                    children: [
                      Expanded(child: CustomTField(tFieldTitle: "Nom", tFieldContent: "Entrer votre nom")), 
                      SizedBox(width: 10,),
                      Expanded(child: CustomTField(tFieldTitle: "Prenom", tFieldContent: "Entrer votre prenom")),
                    ],
                   ),
                   SizedBox(height: 20,),
                    Row(
                    children: [
                      Expanded(child: CustomTField(tFieldTitle: "Email", tFieldContent: "Entrer votre email")), 
                      SizedBox(width: 10,),
                      Expanded(child: CustomTField(tFieldTitle: "Télephone", tFieldContent: "Taper votre numéro")),
                    ],
                   ),
                      SizedBox(height: 20,),
                    Row(
                    children: [
                      Expanded(child: CustomTField(tFieldTitle: "Adresse", tFieldContent: "Entrer votre adresse")), 
                      SizedBox(width: 10,),
                      Expanded(child: CustomTField(tFieldTitle: "Nationalité", tFieldContent: "Entrer votre nationalité")),
                    ],
                   ),
                      SizedBox(height: 20,),
                    Row(
                    children: [
                      Expanded(child: PasswordTField(tFieldTtitle: "Mot de passe", tFieldContent: "mot de passe")), 
                      SizedBox(width: 10,),
                      Expanded(child: PasswordTField(tFieldTtitle: "Confirmer", tFieldContent: "C. mot de passe")),
                    ],
                   ),
                       SizedBox(height: 20,),
                    Row(
                    children: [
                      Expanded(child: CustomTField(tFieldTitle: "Genre", tFieldContent: "Entrer votre genre")), 
                      SizedBox(width: 10,),
                      Expanded(child: CustomTField(tFieldTitle: "Date de naissance", tFieldContent: "mm/dd/yyyy")),
                    ],
                   ),    
                      SizedBox(height: 25,), 
                      Row(
                        children: [
                          Expanded(child: CustomButton(buttonTitle: "Créer un compte", onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screens()));
                          })),
                        ],
                      ),
                      SizedBox(height: 25,), 
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text(
                          "Créer Votre compte",
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )
                    ],
                  )
                  ,SizedBox(height: 15,)
                  ],
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }
}