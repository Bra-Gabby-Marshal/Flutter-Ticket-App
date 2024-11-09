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
              width: 60,
              height: 60,
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
              children: [
                Text("Book Tickets", style: AppStyles.headLineStyle1,),
                Text("New-York", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),)
              ],
            ),
          ],
        ),
      ],
    ),
    );
  }
}
