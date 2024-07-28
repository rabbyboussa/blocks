part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

final class CheckUsernameAvailabilityEvent extends SignUpEvent {
  const CheckUsernameAvailabilityEvent({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

final class CreateClientEvent extends SignUpEvent {
  const CreateClientEvent({required this.client});

  final ClientEntity client;

  @override
  List<Object> get props => [client];
}

final class CreateAccountEvent extends SignUpEvent {
  const CreateAccountEvent({required this.client, required this.account});

  final ClientEntity client;
  final AccountEntity account;

  @override
  List<Object> get props => [
        client,
        account,
      ];
}
