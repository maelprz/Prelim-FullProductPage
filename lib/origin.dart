import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Origin extends StatelessWidget {
  const Origin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ROW 1: Title "Origin"
        Text(
          "Origin",
          style: GoogleFonts.raleway(
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),

        const SizedBox(height: 8),

        // ROW 2: "EU" rectangle
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 213, 227, 247),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            "EU",
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),

        const SizedBox(height: 12),

        // ROW 3: "Size Guide" + Arrow Button
        Row(
          children: [
            Text(
              "Size Guide",
              style: GoogleFonts.raleway(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
            ),

            const Spacer(),

            // Arrow Button
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF004CFF),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
