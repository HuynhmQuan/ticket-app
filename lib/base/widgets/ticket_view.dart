import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destionation with icons first line
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      const Spacer(),
                      Text(
                        'LDN',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  // Show departure and destination names with time
                  Row(
                    children: [
                      Text(
                        'New-York',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '8H 30M',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'London',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              height: 20,
              color: AppStyles.ticketOrange,
            ),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // show departure and destionation with icons first line
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      const Spacer(),
                      Text(
                        'LDN',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  // Show departure and destination names with time
                  Row(
                    children: [
                      Text(
                        'New-York',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '8H 30M',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'London',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
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
