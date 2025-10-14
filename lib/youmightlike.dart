import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YouMightLike extends StatelessWidget {
  const YouMightLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ROW 1: Title
          Text(
            "You might like",
            style: GoogleFonts.raleway(
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),

          const SizedBox(height: 12),

          // ROW 2: Images 1 & 2
          _buildRow(['youMightLike1.png', 'youMightLike2.png']),

          const SizedBox(height: 12),

          // ROW 3: Images 3 & 4
          _buildRow(['youMightLike3.png', 'youMightLike4.png']),

          const SizedBox(height: 12),

          // ROW 4: Images 5 & 6
          _buildRow(['youMightLike5.png', 'youMightLike6.png']),
        ],
      ),
    );
  }

  // Helper method to build a row of 2 items with fixed rectangle size
  Widget _buildRow(List<String> images) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < images.length; i++) ...[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Fixed rectangle size
                Container(
                  width: double.infinity,
                  height: 200, // fixed height for all rectangles
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha((0.5 * 255).toInt()),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'assets/${images[i]}',
                    fit: BoxFit.cover, // image scales to fill the rectangle
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Lorem ipsum dolor sit amet consectetur",
                  style: GoogleFonts.raleway(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "\$17,00",
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          if (i == 0) const SizedBox(width: 5), // 5px gap
        ],
      ],
    );
  }
}
