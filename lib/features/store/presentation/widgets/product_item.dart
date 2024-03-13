import 'package:blocks/config/routes/routes_names.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productImageUrl,
  });

  final String productImageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(RoutesNames.productDetails),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.white,
        margin: const EdgeInsets.only(
          top: 16,
          left: 16,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(productImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Brique de 12',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '1 Kg',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Row(
                    children: [
                      Text(
                        '15x12x8 cm',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  EasyRichText(
                    '\$12 / unité',
                    defaultStyle: GoogleFonts.montserrat(
                      color: Colors.brown,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    patternList: [
                      EasyRichTextPattern(
                        targetString: '/ unité',
                        style: GoogleFonts.ubuntu(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
