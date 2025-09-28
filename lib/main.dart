import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'variations.dart';
import 'specifications.dart';
import 'origin.dart';
import 'delivery.dart';
import 'ratingsreviews.dart';
import 'mostpopular.dart';
import 'youmightlike.dart';
import 'stickybottomrow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable content
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEADER IMAGE (scrollable now)
                SizedBox(
                  width: double.infinity,
                  height: 380,
                  child: Transform.scale(
                    scale: 1.25,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/headerImage.png',
                      fit: BoxFit.cover,
                      alignment: const Alignment(0, -1.05),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                
                // ROW 1: Price + Reply
                Row(
                  children: [
                    Text(
                      "\$17.00",
                      style: GoogleFonts.raleway(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 226, 226),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(3.14159),
                            child: Transform.scale(
                              scale: 1.4,
                              child: const Icon(
                                Icons.reply,
                                size: 23,
                                color: Color(0xFFB5A2A2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 8),

                // ROW 2: Description
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 17),
                const Variations(),
                const SizedBox(height: 17),
                const Specifications(),
                const SizedBox(height: 17),
                const Origin(),
                const SizedBox(height: 17),
                const Delivery(),
                const SizedBox(height: 17),
                const RatingsReviews(),
                const SizedBox(height: 17),
                const MostPopular(),
                const SizedBox(height: 17),
                const YouMightLike(),
                
                // Add extra padding at bottom so content is not hidden behind sticky row
                const SizedBox(height: 80),
              ],
            ),
          ),

          // Sticky bottom row
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: StickyBottomRow(), // remove const here
          ),
        ],
      ),
    );
  }
}
