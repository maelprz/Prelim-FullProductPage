import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YouMightLike extends StatelessWidget {
  const YouMightLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ROW 1: Title + See all + Arrow Button
        Row(
          children: [
            Text(
              "You might like",
              style: GoogleFonts.raleway(
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ]
    );
  }
}