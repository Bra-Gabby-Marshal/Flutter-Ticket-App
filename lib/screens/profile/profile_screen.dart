import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_ticket_app/base/res/media.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';

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
                Text("Book Tickets", style: AppStyles.headLineStyle2,),
                Text("New-York", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                const SizedBox(height: 8,),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppStyles.profileLocationColor ,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799)
                        ),
                        child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                        color: Colors.white,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ),
    );
  }
}
