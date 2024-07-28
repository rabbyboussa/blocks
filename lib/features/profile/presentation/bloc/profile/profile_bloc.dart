import 'package:bloc/bloc.dart';
import 'package:blocks/features/sign_up/domain/entities/account_entity.dart';
import 'package:blocks/features/sign_up/domain/entities/client_entity.dart';
import 'package:blocks/features/sign_up/domain/usecases/add_account_usecase.dart';
import 'package:blocks/features/sign_up/domain/usecases/add_client_usecase.dart';
import 'package:blocks/features/sign_up/domain/usecases/check_username_availability_usecase.dart';
import 'package:equatable/equatable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required CheckUsernameAvailabilityUsecase checkUsernameAvailabilityUsecase,
    required AddClientUsecase addClientUsecase,
    required AddAccountUsecase addAccountUsecase,
  })  : _checkUsernameAvailabilityUsecase = checkUsernameAvailabilityUsecase,
        _addClientUsecase = addClientUsecase,
        _addAccountUsecase = addAccountUsecase,
        super(ClientsInitial()) {
    on<CheckUsernameAvailabilityEvent>(onCheckingUsernameAvailability);
    on<CreateClientEvent>(onCreatingClient);
    on<CreateAccountEvent>(onCreatingAccount);
  }

  final CheckUsernameAvailabilityUsecase _checkUsernameAvailabilityUsecase;
  final AddClientUsecase _addClientUsecase;
  final AddAccountUsecase _addAccountUsecase;

  Future<void> onCheckingUsernameAvailability(
      CheckUsernameAvailabilityEvent event, Emitter<SignUpState> emit) async {
    emit(SignUpLoadingState());

    final result = await _checkUsernameAvailabilityUsecase(
        CheckUsernameAvailabilityUsecaseParams(username: event.username));

    result.fold(
      (failure) {
        emit(SignUpFailedState(message: failure.message));
      },
      (availability) {
        if (availability == 0) {
          emit(const UsernameAvailableState());
        } else {
          emit(const SignUpFailedState(
              message:
                  'Le nom d\'utilisateur que vous avez renseigné existe déjà. Si vous avez déjà crée un compte avec ce nom d\'utilisateur veuillez vous connecter.'));
        }
      },
    );
  }

  Future<void> onCreatingClient(
      CreateClientEvent event, Emitter<SignUpState> emit) async {
    emit(SignUpLoadingState());

    final result =
        await _addClientUsecase(AddClientUsecaseParams(client: event.client));

    result.fold(
      (failure) {
        emit(SignUpFailedState(message: failure.message));
      },
      (client) {
        emit(ClientCreatedState(client: client));
      },
    );
  }

  Future<void> onCreatingAccount(
      CreateAccountEvent event, Emitter<SignUpState> emit) async {
    emit(SignUpLoadingState());

    final result = await _addAccountUsecase(
        AddAccountUsecaseParams(account: event.account));

    result.fold(
      (failure) {
        emit(SignUpFailedState(message: failure.message));
      },
      (account) {
        emit(AccountCreatedState(
          client: event.client,
          account: account,
        ));
      },
    );
  }
}
