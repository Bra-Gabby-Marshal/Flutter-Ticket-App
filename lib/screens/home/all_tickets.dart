import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ticket_app/base/utils/app_json.dart';
import 'package:my_ticket_app/base/widgets/app_routes.dart';
import 'package:my_ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Listing all tickets
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) =>
                  GestureDetector(
                    onTap: (){
                      var index = ticketList.indexOf(singleTicket);

                      print ("I am tapped on ticket $index");
                      Navigator.pushNamed(context, AppRoutes.ticketScreen,
                          arguments: {"index": index});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                  )).toList(),
            ),
          )
        ],
      ),
    );
  }
}
