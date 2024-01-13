import 'package:flutter/material.dart';

class BackgroundBody extends StatelessWidget {
  const BackgroundBody({super.key, required this.child});

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
      Image.asset('assets/images/Rent EZ background.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      ),
        child
      ],
    );
  }
}
