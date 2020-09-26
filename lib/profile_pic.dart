import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=7uqmY6le4xk

class ProfilePic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 65,
      backgroundColor: Color(0xFA5A5275),
      child: Container(
        width: 120.0,
        height: 120.0,
        child: ClipOval(
          child: Image.asset(
            'images/default_pic.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
