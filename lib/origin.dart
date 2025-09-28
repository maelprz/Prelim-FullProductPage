import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Origin extends StatelessWidget {
  const Origin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 1),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 204, 214, 240), // Converted #2596be to ARGB
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "EU",
              style: GoogleFonts.raleway(
                fontSize: 18,
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
      ),
    );
  }
}
