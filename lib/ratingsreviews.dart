import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingsReviews extends StatelessWidget {
  const RatingsReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ROW 1: Title
        Text(
          "Ratings & Reviews",
          style: GoogleFonts.raleway(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),

        const SizedBox(height: 8),

        // ROW 2: Stars + Rating
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 30),
            const Icon(Icons.star, color: Colors.amber, size: 30),
            const Icon(Icons.star, color: Colors.amber, size: 30),
            const Icon(Icons.star, color: Colors.amber, size: 30),
            const Icon(Icons.star_border, color: Colors.amber, size: 30),

            const SizedBox(width: 8),

            // Rating text in rectangle
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 213, 227, 247),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "4/5",
                style: GoogleFonts.raleway(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // 2nd container: Individual review
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image
            CircleAvatar(
              radius: 20, // 40px diameter
              backgroundColor: Colors.white, // border color
              child: CircleAvatar(
                radius: 17, // inner radius to leave white border
                backgroundImage: AssetImage('assets/reviewImage1.png'),
              ),
            ),

            const SizedBox(width: 12),

            // Review content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  Text(
                    "Veronika",
                    style: GoogleFonts.raleway(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  // Stars
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      Icon(Icons.star_border, color: Colors.amber, size: 25),
                    ],
                  ),

                  const SizedBox(height: 4),

                  // Review text
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ...",
                    style: GoogleFonts.raleway(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),

       Container(
          width: double.infinity, 
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF004CFF),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            "View all Reviews",
            textAlign: TextAlign.center, 
            style: GoogleFonts.raleway(
              fontSize: 21,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
