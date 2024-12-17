import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  final String image;
  final Color backgroundColor;
  final String title;
  final num price;
  final String date;
  final String cardType;

  const SocialWidget({
    required this.image,
    required this.backgroundColor,
    required this.title,
    required this.price,
    required this.date,
    required this.cardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backgroundColor,
          ),
          child: Image.network(
            image,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      // maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // Spacer(),
                  Text('-\$$price')
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      date,
                    ),
                  ),
                  // SizedBox(width: 150,),
                  Text(cardType),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
