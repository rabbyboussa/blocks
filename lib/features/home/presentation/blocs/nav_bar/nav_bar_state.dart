part of 'nav_bar_bloc.dart';

sealed class NavBarState extends Equatable {
  const NavBarState({required this.selectedItemIdex});

  final int selectedItemIdex;

  @override
  List<Object> get props => [selectedItemIdex];
}

final class NavBarInitial extends NavBarState {
  const NavBarInitial() : super(selectedItemIdex: 0);
}

final class NavBarSelectedItemIndexChanged extends NavBarState {
  const NavBarSelectedItemIndexChanged({required super.selectedItemIdex});
}
