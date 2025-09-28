import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ROW 1: Delivery Title
        Text(
          "Delivery",
          style: GoogleFonts.raleway(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),

        const SizedBox(height: 12),

        // ROW 2: Standard Delivery
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF004CFF), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      "Standard",
                      style: GoogleFonts.raleway(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 239, 252),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        "5-7 days",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF004CFF),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$3.00",
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        // ROW 3: Express Delivery
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF004CFF), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      "Express",
                      style: GoogleFonts.raleway(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 239, 252),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        "1-2 days",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF004CFF),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$12.00",
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
