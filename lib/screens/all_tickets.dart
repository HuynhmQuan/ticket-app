import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Tickets')),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            spacing: 20,
            children: ticketList
                .map(
                  (singleTicket) => TicketView(
                    ticket: singleTicket,
                    wholeScreen: true,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
