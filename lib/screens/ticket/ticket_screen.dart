import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ticket_app/base/res/media.dart';
import 'package:my_ticket_app/base/res/styles/app_styles.dart';
import 'package:my_ticket_app/base/utils/app_json.dart';
import 'package:my_ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:my_ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:my_ticket_app/base/widgets/ticket_view.dart';
import 'package:my_ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("Tickets", style: AppStyles.headLineStyle1,),
          const SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left:  16),
              child: TicketView(
                ticket: ticketList[0], isColor: true,
              )),
          const SizedBox(height: 1,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketColor,
            child:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: "Flutter DB",
                        bottomText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor:true,
                    ),
            AppColumnTextLayout(
              topText: "5221 36869",
              bottomText: "Passport",
              alignment: CrossAxisAlignment.end,
              isColor:true,
            ),
                  ],
                ),
                 const SizedBox(height: 20,),
                const AppLayoutBuilderwidget(randomDivider: 15, width: 5, isColor: false,),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "2465 65849522148",
                      bottomText: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor:true,
                    ),
                    AppColumnTextLayout(
                      topText: "36869",
                      bottomText: "Booking Code",
                      alignment: CrossAxisAlignment.end,
                      isColor:true,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const AppLayoutBuilderwidget(randomDivider: 15, width: 5, isColor: false,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaCard)
                          ],
                        )
                      ],
                    ),
                    const AppColumnTextLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor:true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
