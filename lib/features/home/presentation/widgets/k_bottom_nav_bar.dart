import 'package:blocks/features/home/presentation/blocs/nav_bar/nav_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_null_safety_icons/flutter_icons.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class KBottomNavBar extends StatefulWidget {
  const KBottomNavBar({super.key});

  @override
  State<KBottomNavBar> createState() => _KBottomNavBarState();
}

class _KBottomNavBarState extends State<KBottomNavBar> {
  int _selectedItemIndex = 0;

  final List<BottomNavigationBarItem> _items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.storefront),
      label: 'Magasin',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FlutterIcons.text_document_ent),
      label: 'Mes commandes',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FlutterIcons.user_fea),
      label: 'Mon compte',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      onTap: (index) {
        setState(() => _selectedItemIndex = index);
        context.read<NavBarBloc>().add(NavBarSelectedItemIndexChangedEvent(
            selectedItemIndex: _selectedItemIndex));
      },
      currentIndex: _selectedItemIndex,
      items: _items,
      elevation: 8,
      padding: EdgeInsets.zero,
      snakeShape: SnakeShape.rectangle,
      snakeViewColor: Colors.brown,
      backgroundColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(color: Colors.white),
      unselectedItemColor: Colors.grey,
    );
  }
}
