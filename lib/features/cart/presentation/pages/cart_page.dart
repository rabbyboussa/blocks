import 'package:blocks/features/cart/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_null_safety_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Mon panier',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Tooltip(
            message: 'Vider le panier',
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FlutterIcons.trash_2_fea,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 468,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.grey.shade100,
                    child: const Column(
                      children: [
                        CartItem(),
                        CartItem(),
                        SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nombre de produits:',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Toal:',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '\$800',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Procéder au payement'),
                        ),
                      )
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
