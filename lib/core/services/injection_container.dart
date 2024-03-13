import 'package:blocks/features/home/presentation/blocs/nav_bar/nav_bar_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerFactory(() => NavBarBloc());
}
