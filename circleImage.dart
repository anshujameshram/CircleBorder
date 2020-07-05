import 'package:flutter/material.dart';

import 'user.dart';

class CircleImage extends StatelessWidget {
  final User user;

  CircleImage({this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: user.image == null
                ? AssetImage('images/default2.jpg')
                : AssetImage(user.image),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black26,
              width: 3,
            ),
          ),
        ),
        SizedBox(height: 3),
        Text(user.name),
      ],
    );
  }
}
