// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_app/constant/colors.dart';
import 'package:new_app/pages/loginscreens/login.dart';
import 'package:new_app/shared/custombutton.dart';
import 'package:new_app/shared/customtextfield.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                    color: darkColor,
                   ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back, size: 26, color: Colors.white,),
                      Center(child: Text("Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white, ),)),
                      Icon(Icons.settings, color: Colors.white, size: 27,)
                    ],
                  )
                ),
              ),
              SizedBox(height: 30,), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Column(
                  children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular((50)),
                    child: Image.asset("assets/images/avatar.png", width: 100, height: 100,),),
                    SizedBox(height: 20,), 
                     Text("Changer votre photo", style: TextStyle(fontWeight: FontWeight.w700, color: mainColor, fontSize: 16),), 
                     SizedBox(height: 30,), 
                     Row(
                      children: [
                        Expanded(child: CustomTField(tFieldTitle: "Nom", tFieldContent: "Degani")), 
                        SizedBox(width: 10,), 
                        Expanded(child: CustomTField(tFieldTitle: "Prenom", tFieldContent: "Omar"))
                      ],
                     ),
                     SizedBox(height: 20,), 
                     Row(
                      children: [
                        Expanded(child: CustomTField(tFieldTitle: "Genre", tFieldContent: "Homme")), 
                        SizedBox(width: 10,), 
                        Expanded(child: CustomTField(tFieldTitle: "Date de naissance", tFieldContent: "27/05/2001"))
                      ],
                     ),
                     SizedBox(height: 20,),
                       Row(
                      children: [
                        Expanded(child: CustomTField(tFieldTitle: "Adresse", tFieldContent: "Tozeur")), 
                        SizedBox(width: 10,), 
                        Expanded(child: CustomTField(tFieldTitle: "Nationalité", tFieldContent: "Tunisienne"))
                      ],
                     ),
                      SizedBox(height: 20,),
                     Row(
                      children: [
                        Expanded(child: CustomTField(tFieldTitle: "Email", tFieldContent: "Laamyr@gmail.com")), 
                        SizedBox(width: 10,), 
                        Expanded(child: CustomTField(tFieldTitle: "Téléphone", tFieldContent: "29750827"))
                      ],
                     ),
                     SizedBox(height: 20,),
                     Row(
                       children: [
                         Expanded(child: CustomButton(buttonTitle: "Ajouter compétance", onPressed: (){})),
                       ],
                     ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(child: CustomButton(buttonTitle: "Modifier votre profile", onPressed: (){})),
                        ],
                      ), 
                      SizedBox(height: 10,),
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