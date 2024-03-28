import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key,required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style:const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
