import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
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

        const SizedBox(height: 5),

        // ROW 2: Clean horizontal scroll
        SizedBox(
          height: 145,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withAlpha(80),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Image section
                    Container(
                      width: double.infinity,
                      height: 105,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'assets/mostPopularImage${index + 1}.png',
                        fit: BoxFit.cover,
                      ),
                    ),

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
            },
          ),
        ),
      ],
    );
  }
}
