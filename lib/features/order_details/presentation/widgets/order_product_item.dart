import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderProductItem extends StatelessWidget {
  const OrderProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 104,
      color: Colors.grey.shade50,
      margin: const EdgeInsets.only(
        top: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 104,
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
                  const Text(
                    'Brique de 12',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 Kg',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Qté: 100',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '\$400',
                        style: GoogleFonts.montserrat(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
    );
  }
}
