// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_app/constant/colors.dart';
import 'package:new_app/shared/jobcard.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.23,
              decoration: BoxDecoration(
                color: darkColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 20.0, left: 20.0, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bienvenue chez ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              "khedma 🤝",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorColor: Colors.white38,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white38,
                              ),
                              filled: true,
                              fillColor: Colors.white12,
                              hintText: "Chercher un travail",
                              hintStyle: TextStyle(color: Colors.white38),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white12,
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
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white12),
                            child: Padding(
                              padding: const EdgeInsets.all(11.5),
                              child: Icon(
                                Icons.filter_alt_outlined,
                                size: 28,
                                color: Colors.white54,
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Emplois récemment ajoutés",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "Voir tous",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: mainColor),
                      )
                    ],
                  ),
                  JobCard(
                      companyName: "Khedma Site",
                      imageLink: "assets/images/aaaa.jpg",
                      location: "Tunis",
                      buttonClick: () {}),
                  JobCard(
                      companyName: "La société Mansour construction",
                      imageLink: "assets/images/aaaa.jpg",
                      location: "Tunis, Ariana, tunisia",
                      buttonClick: () {}),
                  JobCard(
                      companyName: "Khedma Site",
                      imageLink: "assets/images/aaaa.jpg",
                      location: "Tunis",
                      buttonClick: () {}),
                  JobCard(
                      companyName: "La société Mansour construction",
                      imageLink: "assets/images/aaaa.jpg",
                      location: "Tunis, Ariana, tunisia",
                      buttonClick: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
