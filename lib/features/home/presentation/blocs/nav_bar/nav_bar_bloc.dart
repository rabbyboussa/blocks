import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'nav_bar_event.dart';
part 'nav_bar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(const NavBarInitial()) {
    on<NavBarSelectedItemIndexChangedEvent>(onNavBarSelectedItemIndexChanged);
  }

  Future<void> onNavBarSelectedItemIndexChanged(
    NavBarSelectedItemIndexChangedEvent event,
    Emitter<NavBarState> emit,
  ) async {
    emit(NavBarSelectedItemIndexChanged(
        selectedItemIdex: event.selectedItemIndex));
  }
}
