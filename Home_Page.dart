import 'package:first_app/appbar.dart';
import 'package:first_app/circleImage.dart';

import 'package:flutter/material.dart';

import 'user.dart';

class HomePage extends StatelessWidget {
  final List<User> users = getImageFromServer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar('My Users', Colors.grey.shade500),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return CircleImage(
              user: users[index],
            );
          },
        ));
  }
}
