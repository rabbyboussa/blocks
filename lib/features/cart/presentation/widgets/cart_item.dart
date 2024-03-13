import 'package:blocks/core/presentation/widgets/k_spin_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_null_safety_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 224,
      color: Colors.white,
      margin: const EdgeInsets.only(
        top: 8,
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Colors.grey.shade50,
            margin: const EdgeInsets.only(
              top: 8,
              left: 16,
              right: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/cerello-81465.appspot.com/o/pave_beton_autobloquant_rouge_l_x_l_x_ep_cm_le_m_255766_picture_01.jpeg?alt=media&token=d6b2054b-2534-4eb3-a48c-7005451c2691'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Brique de 12',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FlutterIcons.trash_2_fea,
                                color: Colors.brown,
                              ),
                            )
                          ],
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
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Quantité'),
                    SizedBox(height: 2),
                    KSpinBox(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Sous total'),
                    const SizedBox(height: 2),
                    Text(
                      '\$400',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
