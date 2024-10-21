import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text,{super.key, required onTap}): pressHandler = onTap;
  final String text;
  final void Function() pressHandler;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: const Color.fromARGB(255, 33, 1, 95),
              foregroundColor: Colors.white,
            ),
            onPressed: pressHandler, 
            child:Text(
              textAlign: TextAlign.center,
              text
            )
          );
  }
}