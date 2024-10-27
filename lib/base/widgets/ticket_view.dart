import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';
import 'package:my_ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_ticket_app/base/widgets/big_circle.dart';
import 'package:my_ticket_app/base/widgets/big_dot.dart';
import 'package:my_ticket_app/base/widgets/text_style_fourth.dart';
import 'package:my_ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Size of the mobile screen
    return SizedBox(// Making the media query dynamic
      width: size.width*0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                   Row(
                    // show departure and destination with icons first time
                    children: [
                      const TextStyleThird(text: "NYC",),
                      Expanded(child: Container()),
                      const BigDot(),
                       Expanded(child: Stack(children: [
                        const SizedBox(
                          height:24,
                          child: AppLayoutBuilderwidget(randomDivider: 6,),
                        ),
                        Center(child: Transform.rotate(angle: 1.57,
                        child: const Icon(Icons.local_airport_rounded, color: Colors.white,)),)
                      ],)),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "LDN",),

                    ],
                  ),
                  const SizedBox(height: 3,),
                  // show departure and destination names with time
                  Row(
                    // show departure and destination with icons first time
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New York",),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M",),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child:  TextStyleFourth(text: "London", align: TextAlign.end,),
    ),
                    ],
                  )
                ],
              ),
            ),
            // circles and dots
            Container(
              // height: 20,
              color: AppStyles.ticketOrange,
              child:  const Row(
                children: [
                  BigCircle(isRight:false),
                  Expanded(child: AppLayoutBuilderwidget(randomDivider: 16, width: 6,)),
                  BigCircle(isRight: true,),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // show departure and destination with icons first time
                    children: [
                      Column(
                        children: [
                          TextStyleThird(text: "1 MAY"),
                          SizedBox(height: 5,),
                          TextStyleThird(text: "DATE"),
                        ],
                      ),
                      Column(
                        children: [
                          TextStyleThird(text: "1 MAY"),
                          SizedBox(height: 5,),
                          TextStyleThird(text: "DATE"),
                        ],
                      ),
                      Column(
                        children: [
                          TextStyleThird(text: "1 MAY"),
                          SizedBox(height: 5,),
                          TextStyleThird(text: "DATE"),
                        ],
                      ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "08:00 AM", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "23", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      // ),
                    ],
                  ),
                  SizedBox(height: 3,),
                  // show departure and destination names with time
                  // Row(
                  //   // show departure and destination with icons first time
                  //   children: [
                  //     Text(
                  //       "Date", style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Departure time", style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Number", style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
