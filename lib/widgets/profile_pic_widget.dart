import 'package:flutter/material.dart';

class ProfilePicWidget extends StatelessWidget {
  final String image;
  final bool isOnline;

  const ProfilePicWidget({
    required this.image,
    required this.isOnline,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      // alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
            image,
          ),
        ),
        // if(isOnline)
        Visibility(
          visible: isOnline,
          child: PositionedDirectional(
            bottom: 0,
            end: 0,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 10,
            ),
          ),
        )
      ],
    );
  }
}
