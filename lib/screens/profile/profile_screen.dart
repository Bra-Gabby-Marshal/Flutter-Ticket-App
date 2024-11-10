import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_ticket_app/base/res/media.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';
import 'package:my_ticket_app/base/widgets/heading_text.dart';
import 'package:my_ticket_app/base/widgets/text_style_third.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
    body: ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20
      ),
      children: [
        const Padding(padding: EdgeInsets.only(top: 40)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // shows the logo
            Container(
              width: 90 ,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    AppMedia.logo
                  )
                )
              ),            ),
          const SizedBox(width: 20,),
          //   shows the column text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingText(text: "Book Tickets", isColor: true, ),
                // Text("Book Tickets", style: AppStyles.headLineStyle2,),
                Text("New-York", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                const SizedBox(height: 8,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                  decoration: BoxDecoration(
                    color: AppStyles.profileLocationColor ,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppStyles.profileTextColor,
                        ),
                        child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                        color: Colors.white, size: 15,),
                      ),
                      const SizedBox(width: 5,),
                      Text("Premium Status", style: TextStyle(
                        color: AppStyles.profileTextColor, fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                )
              ],
            ),
            Expanded(child: Container()),
            Text("Edit",
            style: TextStyle(
              color: AppStyles.primaryColor, fontWeight: FontWeight.w300
            ),)
          ],
        ),
      const SizedBox(height: 8,),
      //   Divider
        Divider(color: Colors.grey.shade300,),
        // show the card
        Stack(
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(18)
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child:  Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      size: 27,
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const TextStyleThird(text: "You\'v got a new award",
                      isColor: null,),
                    Text(
                      "You have 95 flights in a year",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    )
                  ],)
                ],
              ),
            ),
            Positioned(
              top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2))
                  ),
                ))
          ],
        )
      ],
    ),
    );
  }
}
