import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';

class TicketPositionedCircles extends StatelessWidget {
  final bool? position;
  const TicketPositionedCircles({super.key, this.position});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position==true?22:null,
        right: position==true?null:22,
        top: 250,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppStyles.textColor),
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.ticketColor,
          ),
        ));
  }
}
