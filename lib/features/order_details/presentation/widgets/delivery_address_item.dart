import 'package:flutter/material.dart';

class DeliveryAddressItem extends StatelessWidget {
  const DeliveryAddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chantier 1 - Gombe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 2),
          Text(
            '125 Avenue de martyrs Croissement Avenue des Affamés, Programmer c\'est pas facile',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 2),
          Text(
            '0025 Kinshasa, RDC',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
