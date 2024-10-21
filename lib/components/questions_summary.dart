import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [...summaryData.map((item){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: item['user_answer'] == item['correct_answer'] ? const Color.fromARGB(255, 80, 162, 224) : const Color.fromARGB(255, 249, 45, 236),
                    shape: const CircleBorder(
                    side: BorderSide(
                      style: BorderStyle.none,
                    )
                  )),
                  child: Text(
                    ((item['question_index'] as int)+ 1).toString(),
                    style: GoogleFonts.lato(
                      fontSize: 16
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['question'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 245, 160, 239),
                          fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        item['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 222, 128, 215)
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        item['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 144, 191, 227)
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            );
          })],
        ),
      ),
    );
  }
}