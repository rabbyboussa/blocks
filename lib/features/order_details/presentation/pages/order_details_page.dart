import 'package:blocks/features/order_details/presentation/widgets/delivery_address_item.dart';
import 'package:blocks/features/order_details/presentation/widgets/order_product_item.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Détails de la commande',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Commande',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Commande crée',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '20 février 2024',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Heure',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '05:18',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Commande ID',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '#OQUSJEWK',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Statut',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Statut commande',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Non livré',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Adresse de livraison',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: DeliveryAddressItem(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Produits (2)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      OrderProductItem(),
                      OrderProductItem(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
