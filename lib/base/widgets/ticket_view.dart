import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

import 'app_column_text_layout.dart';
import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width*0.85,
      height: 189.0,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)
                ),
              ),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
                          Center(child: Transform.rotate(angle: 1.57,
                          child: const Icon(Icons.local_airport_rounded, color: Colors.white))),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "LDN"),
                    ],
                  ),
                  const SizedBox(height: 3),
                  // show departure and destination names with time
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New-York"),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "London", align: TextAlign.end),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 16, width: 6)),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // orange part of ticket
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)
                ),
              ),
              child: const Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText:  "1 MAY",
                        bottomText: "DATE"
                      ),
                      AppColumnTextLayout(
                        crossAlignment: CrossAxisAlignment.center,
                        topText:  "08:00 AM",
                        bottomText: "Departure time"
                      ),
                      AppColumnTextLayout(
                          crossAlignment: CrossAxisAlignment.end,
                          topText:  "23",
                          bottomText: "Number"
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
