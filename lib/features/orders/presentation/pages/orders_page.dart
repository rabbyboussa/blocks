import 'package:blocks/features/orders/presentation/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Mes commandes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            OrderItem(),
            OrderItem(),
          ],
        ),
      ),
    );
  }
}
