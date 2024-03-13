import 'package:blocks/core/presentation/widgets/k_spin_box.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Détails du produit',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 304,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/image22s.jpg?alt=media&token=4fd12c00-13d6-4d89-b33d-d93bfde72ba3',
                        ),
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
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
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Poids',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '1 Kg',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 48),
                            Column(
                              children: [
                                Text(
                                  'Dimensions',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '15x12x8 cm',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        const ReadMoreText(
                          'Nos briques sont les meilleures du marché. Doséss convenablement, nos briques sont très résistantes même à des températures et des conditions extrêmes. D\'ailleurs nos briques ont été testé par un long processus ce qui nous permet d\'affirmer que vous ne serez pas deçus!',
                          trimLines: 3,
                          colorClickableText: Colors.brown,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: ' Voir plus',
                          trimExpandedText: ' Voir moins',
                          lessStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                          ),
                          moreStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 136,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const KSpinBox(),
                      Text(
                        '\$500',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Ajouter au panier'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
