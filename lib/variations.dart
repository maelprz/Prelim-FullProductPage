import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Variations extends StatelessWidget {
  const Variations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ROW 1
        Row(
          children: [
            Text(
              "Variations",
              style: GoogleFonts.raleway(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(width: 12),

            // Pink Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(101, 224, 224, 224),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Pink",
                style: GoogleFonts.raleway(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 8),

            // M Box
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(101, 224, 224, 224),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "M",
                style: GoogleFonts.raleway(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
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

        const SizedBox(height: 12), // spacing between rows

        // ROW 2
        Row(
          children: [
            // Image 1
            Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/variationImage1.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 5),

            // Image 2
            Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/variationImage2.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 5),

            // Image 3
            Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/variationImage3.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
