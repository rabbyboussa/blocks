import 'package:blocks/config/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(RoutesNames.orderDetails),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Commande #OQUSJEWK',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'Date:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 8),
                  Text('le 20 février 202 à 05:22')
                ],
              ),
              Row(
                children: [
                  Text(
                    'Nombre de produits:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 8),
                  Text('4')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
