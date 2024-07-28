part of 'sign_up_bloc.dart';

sealed class SignUpState extends Equatable {
  const SignUpState({
    this.account,
    this.client,
  });

  final AccountEntity? account;
  final ClientEntity? client;

  @override
  List<Object?> get props => [
        account,
        client,
      ];
}

final class ClientsInitial extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}

final class SignUpFailedState extends SignUpState {
  const SignUpFailedState({required this.message});

  final String message;

  @override
  List<Object> get props => [
        message,
      ];
}

final class UsernameAvailableState extends SignUpState {
  const UsernameAvailableState();
}

final class ClientCreatedState extends SignUpState {
  const ClientCreatedState({required ClientEntity client})
      : super(client: client);
}

final class AccountCreatedState extends SignUpState {
  const AccountCreatedState({
    required ClientEntity client,
    required AccountEntity account,
  }) : super(
          client: client,
          account: account,
        );
}
