import 'package:blocks/features/account/presentation/pages/account_page.dart';
import 'package:blocks/features/home/presentation/blocs/nav_bar/nav_bar_bloc.dart';
import 'package:blocks/features/home/presentation/widgets/k_bottom_nav_bar.dart';
import 'package:blocks/features/orders/presentation/pages/orders_page.dart';
import 'package:blocks/features/store/presentation/pages/store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const StorePage(),
    const OrdersPage(),
    const AccountPage()
  ];

  int _selectedPage = 0;

  @override
  void initState() {
    _selectedPage = context.read<NavBarBloc>().state.selectedItemIdex;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<NavBarBloc, NavBarState>(
        listener: (context, state) {
          _selectedPage = state.selectedItemIdex;
        },
        builder: (context, state) => _pages[_selectedPage],
      ),
      bottomNavigationBar: const KBottomNavBar(),
    );
  }
}
