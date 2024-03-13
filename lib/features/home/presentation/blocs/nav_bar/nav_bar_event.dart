part of 'nav_bar_bloc.dart';

sealed class NavBarEvent extends Equatable {
  const NavBarEvent();

  @override
  List<Object> get props => [];
}

final class NavBarSelectedItemIndexChangedEvent extends NavBarEvent {
  const NavBarSelectedItemIndexChangedEvent({required this.selectedItemIndex});

  final int selectedItemIndex;

  @override
  List<Object> get props => [selectedItemIndex];
}
