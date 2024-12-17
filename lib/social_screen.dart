import 'package:first_app_122/widgets/social_widget.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
          ),
        ),
        title: Text('Transfer Request'),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 19,
              child: Icon(
                Icons.search_rounded,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'Today, 25, Jun',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SocialWidget(
              image:
                  'https://purepng.com/public/uploads/large/purepng.com-apple-logologobrand-logoiconslogos-251519938788qhgdl.png',
              backgroundColor: Colors.grey[400]!,
              title: 'Apple Store',
              price: 220.0,
              date: '21. Jun, 2024',
              cardType: 'Debit Card',
            ),
            SizedBox(
              height: 12,
            ),
            SocialWidget(
              image:
                  'https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo-300x300.png',
              backgroundColor: Colors.red[100]!,
              title: 'Netflix',
              price: 170.0,
              date: '22. Jun, 2024',
              cardType: 'Debit Card',
            ),
            SizedBox(
              height: 12,
            ),
            SocialWidget(
              image:
                  'https://storage.googleapis.com/pr-newsroom-wp/1/2023/05/Spotify_Primary_Logo_RGB_Green.png',
              backgroundColor: Colors.green[100]!,
              title: 'Spotify',
              price: 500,
              date: '16, Nov, 2024',
              cardType: 'Cash',
            ),
            // Row(
            //   children: [
            //     Icon(Icons.add),
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //         height: 100,
            //         color: Colors.red,
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         height: 100,
            //         // width: 50,
            //         color: Colors.orange,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
