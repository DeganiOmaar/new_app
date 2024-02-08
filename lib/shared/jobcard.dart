import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app/constant/colors.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String imageLink;
  final String location;
  VoidCallback buttonClick;
  JobCard(
      {super.key,
      required this.companyName,
      required this.imageLink,
      required this.location,
      required this.buttonClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade500,
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Picture
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageLink,
                      width: 95,
                      height: 95,
                    )),
                const SizedBox(width: 15), // Spacing

                // Column with text, SizedBox, and Row
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text
                      Text(
                        companyName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w800),
                      ),

                      const SizedBox(height: 15),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/location.svg",
                            color: mainColor,
                          ),
                          // Text
                          Expanded(
                            child: Text(
                              location,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),

                          // Button
                          ElevatedButton(
                              onPressed: buttonClick,
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(12),
                                  elevation: 0,
                                  backgroundColor:
                                      Colors.white.withOpacity(0.1),
                                  foregroundColor: Colors.black,
                                  side: const BorderSide(
                                    width: 1.0,
                                    color: mainColor,
                                  )),
                              child: const Text(
                                ' Postuler ',
                                style: TextStyle(),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
