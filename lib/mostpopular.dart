import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    // bottom info labels for each image
    final List<String> labels = ["New", "Sale", "Hot", ""]; 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ROW 1: Title + See all + Arrow Button
        Row(
          children: [
            Text(
              "Most Popular",
              style: GoogleFonts.raleway(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Text(
              "See all",
              style: GoogleFonts.raleway(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 8),
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

        const SizedBox(height: 12),

        // ROW 2: Horizontally scrollable facade effect
        SizedBox(
          height: 140,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: List.generate(4, (index) {
                return Container(
                  width: 104,
                  height: 140,
                  margin: EdgeInsets.only(right: index == 3 ? 0 : 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(80), // stronger shadow
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Image with white border
                      Container(
                        width: double.infinity,
                        height: 100,
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          'assets/mostPopularImage${index + 1}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Bottom info row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Row(
                          children: [
                            Text(
                              "1780",
                              style: GoogleFonts.raleway(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.favorite,
                              color: Color(0xFF004CFF),
                              size: 15,
                            ),
                            const Spacer(),
                            Text(
                              labels[index],
                              style: GoogleFonts.raleway(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
