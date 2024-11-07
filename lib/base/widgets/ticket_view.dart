import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';
import 'package:my_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:my_ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_ticket_app/base/widgets/big_circle.dart';
import 'package:my_ticket_app/base/widgets/big_dot.dart';
import 'package:my_ticket_app/base/widgets/text_style_fourth.dart';
import 'package:my_ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.wholeScreen=false, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Size of the mobile screen
    return SizedBox(// Making the media query dynamic
      width: size.width*0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:  isColor==null?AppStyles.ticketBlue:AppStyles.ticketColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                   Row(
                    // show departure and destination with icons first time
                    children: [
                      TextStyleThird(text: ticket["from"]["code"], isColor: isColor,),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor,),
                       // ticket flying icon
                       Expanded(child: Stack(children: [
                        const SizedBox(
                          height:24,
                          child: AppLayoutBuilderwidget(randomDivider: 6,),
                        ),
                        Center(child: Transform.rotate(angle: 1.57,
                        child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white: AppStyles.planeSecondColor,)),)
                      ],)),
                      BigDot(isColor: isColor,),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"],
                      isColor: isColor,),

                    ],
                  ),
                  const SizedBox(height: 3,),
                  // show departure and destination names with time
                  Row(
                    // show departure and destination with icons first time
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["from"]["name"],
                          isColor: isColor,),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"],
                        isColor: isColor,),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child:  TextStyleFourth(text: ticket["to"]["name"], align: TextAlign.end,
                          isColor: isColor,),
    ),
                    ],
                  )
                ],
              ),
            ),
            // circles and dots
            Container(
              // height: 20,
              color: isColor==null? AppStyles.ticketOrange:AppStyles.ticketColor,
              child:  Row(
                children: [
                  BigCircle(
                      isRight:false,
                  isColor: isColor,),
                   Expanded(
                      child: AppLayoutBuilderwidget(
                        randomDivider: 16,
                        width: 6,
                        isColor: isColor,
                      )),
                   BigCircle(
                    isRight: true,
                    isColor: isColor,),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor==null? AppStyles.ticketOrange:AppStyles.ticketColor,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))
              ),
              child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // show departure and destination with icons first time
                    children: [
                      AppColumnTextLayout(
                          topText: ticket["date"],
                          bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                          isColor:isColor),
                      AppColumnTextLayout(
                          topText: ticket["departure"],
                          bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                          isColor:isColor
                      ),
                      AppColumnTextLayout(
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                          isColor:isColor
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
