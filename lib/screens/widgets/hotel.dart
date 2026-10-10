import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final bool wholeScreenHotel;
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel, this.wholeScreenHotel = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(right: wholeScreenHotel ? 0 : 16),
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        // Hotel image
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      '${AppMedia.baseImage}/${hotel["image"]}',
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              hotel["place"],
              style: AppStyles.headLineStyle2,
            ),
          ],
        ),
      ),
    );
  }
}
