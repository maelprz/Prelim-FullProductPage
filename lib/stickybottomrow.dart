import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StickyBottomRow extends StatefulWidget {
  const StickyBottomRow({super.key});

  @override
  State<StickyBottomRow> createState() => _StickyBottomRowState();
}

class _StickyBottomRowState extends State<StickyBottomRow> {
  bool isLiked = false; // tracks heart state

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20), 
      child: Row(
        children: [
          // Heart Icon (interactive)
          GestureDetector(
            onTap: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              color: Colors.transparent,
              child: Icon(
                isLiked ? Icons.favorite : Icons.favorite_outline,
                color: isLiked ? Colors.red : Colors.black,
                size: 26,
              ),
            ),
          ),
          const SizedBox(width: 20),
          // Add to Cart Button
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12), 
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 34, 34, 34), 
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Add to cart",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          // Buy Now Button
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF004CFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Buy now",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}