import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Specifications extends StatelessWidget {
  const Specifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ROW 1: Title
          Text(
            "Specifications",
            style: GoogleFonts.raleway(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),

          const SizedBox(height: 5),

          // ROW 2: Material
          Text(
            "Material",
            style: GoogleFonts.raleway(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          // ROW 3: Details in rectangles
          Row(
            children: [
              // Cotton 95%
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEBEB),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Cotton 95%",
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(width: 8),

              // Nylon 5%
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEBEB),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Nylon 5%",
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
