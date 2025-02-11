// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_ticketing_app/core/components/buttons.dart';
import 'package:flutter_ticketing_app/core/components/spaces.dart';
import 'package:flutter_ticketing_app/core/constants/colors.dart';
import 'package:flutter_ticketing_app/core/extensions/build_context_ext.dart';
import 'package:flutter_ticketing_app/core/extensions/string_ext.dart';
import 'package:flutter_ticketing_app/presentation/explore/models/destination_model.dart';
import 'package:flutter_ticketing_app/presentation/explore/models/ticket_model.dart';
import 'package:flutter_ticketing_app/presentation/explore/pages/destination_order_page.dart';

class CardTicket extends StatelessWidget {
  final DestinationModel destination;
  final TicketModel ticket;
  const CardTicket({
    super.key,
    required this.destination,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ticket.title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: AppColors.textBlack,
            ),
          ),
          const SpaceHeight(8),
          const Text(
            "Lihat Detail",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
          const SpaceHeight(10),
          const Divider(
            color: Color(0xffBDBDBD),
            thickness: 0.5,
          ),
          const SpaceHeight(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ticket.price.currencyFormatRpV2,
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColors.disable,
                      decorationThickness: 2.0,
                      color: AppColors.disable,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    ticket.priceDiscount.currencyFormatRpV2,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.orange,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 132,
                height: 40,
                child: Button.filled(
                  borderRadius: 8,
                  onPressed: () {
                    context.push(DestinationOrder(
                      destination: destination,
                      ticket: ticket.title,
                    ));
                  },
                  label: 'Pilih',
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
