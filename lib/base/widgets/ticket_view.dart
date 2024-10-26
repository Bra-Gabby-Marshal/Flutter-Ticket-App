import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';
import 'package:my_ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_ticket_app/base/widgets/big_circle.dart';
import 'package:my_ticket_app/base/widgets/big_dot.dart';

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
                      Text(
                        "NYC", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  // show departure and destination names with time
                  Row(
                    // show departure and destination with icons first time
                    children: [
                      Text(
                        "New-York", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              // height: 20,
              color: AppStyles.ticketOrange,
              child:  const Row(
                children: [
                  BigCircle(isRight:false),
                  Expanded(child: AppLayoutBuilderwidget(randomDivider: 10,)),
                  BigCircle(isRight: true,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Row(
                    // show departure and destination with icons first time
                    children: [
                      Text(
                        "NYC", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  // show departure and destination names with time
                  Row(
                    // show departure and destination with icons first time
                    children: [
                      Text(
                        "New-York", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London", style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
