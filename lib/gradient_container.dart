import 'package:flutter/material.dart';
import 'package:first_flutter_app/dice_roller.dart';
// import 'package:first_flutter_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.color1, required this.color2});
  final Color color1;
  final Color color2;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child:  DiceRoller(),
        // child: StyledText(data:"Hello World"),
      ),
    );
  }
}
