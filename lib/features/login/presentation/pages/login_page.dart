import 'package:blocks/config/routes/routes_names.dart';
import 'package:blocks/core/constants/constants.dart';
import 'package:blocks/features/sign_up/domain/entities/account_entity.dart';
import 'package:blocks/features/sign_up/domain/entities/client_entity.dart';
import 'package:blocks/features/sign_up/presentation/bloc/sign_up/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _type;

  bool _showPassword = false;

  ClientEntity? _client;
  AccountEntity? _account;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Blocks',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          switch (state.runtimeType) {
            case SignUpFailedState:
              {
                context.pop();
                final failedState = state as SignUpFailedState;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  showCloseIcon: true,
                  backgroundColor: Colors.red,
                  content: Text(failedState.message),
                ));
              }
            case SignUpLoadingState:
              {
                showProgressDialog(context, message: 'Veuillez patienter');
                break;
              }
            case UsernameAvailableState:
              {
                _client = ClientEntity(
                  denomination: _nameController.text,
                  type: _type!,
                );

                context
                    .read<SignUpBloc>()
                    .add(CreateClientEvent(client: _client!));
                break;
              }
            case ClientCreatedState:
              {
                _client = state.client;

                _account = AccountEntity(
                  type: 'Externe',
                  clientId: _client!.id,
                  username: _usernameController.text,
                  password: _passwordController.text,
                );

                context.read<SignUpBloc>().add(CreateAccountEvent(
                      client: _client!,
                      account: _account!,
                    ));

                break;
              }
            case AccountCreatedState:
              {
                context.pop();
                context.go(RoutesNames.home);
              }
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 24),
                const Text(
                  'Creez votre compte en quelques clicks',
                  softWrap: true,
                  textHeightBehavior: TextHeightBehavior(),
                  style: TextStyle(
                    height: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Salut, renseignez vos informations afin de créer votre compte gratuitement',
                  style: TextStyle(
                    height: 1.2,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'Nom complet',
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: const InputDecoration(
                    hintText: 'Sélectionnez un type',
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                  value: _type,
                  items: <String>['Entreprise', 'Particulier']
                      .map((e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (type) {
                    _type = type;
                  },
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    hintText: 'Nom d\'utilisateur',
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: _showPassword,
                  decoration: const InputDecoration(
                    hintText: 'Mot de passe',
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_nameController.text.trim().isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              showCloseIcon: true,
                              backgroundColor: Colors.red,
                              content: Text('Veuillez renseigner votre nom'),
                            ));
                          } else if (_type == null) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              showCloseIcon: true,
                              backgroundColor: Colors.red,
                              content: Text('Veuillez selectionner un type de compte'),
                            ));
                          } else if (_usernameController.text.trim().isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              showCloseIcon: true,
                              backgroundColor: Colors.red,
                              content: Text('Veuillez renseigner un nom d\'utilisateur'),
                            ));
                          } else if (_passwordController.text.trim().isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              showCloseIcon: true,
                              backgroundColor: Colors.red,
                              content: Text('Veuillez renseigner un mot de passe'),
                            ));
                          } else {
                            context.read<SignUpBloc>().add(
                                CheckUsernameAvailabilityEvent(
                                    username: _usernameController.text));
                          }
                        },
                        child: const Text('Créer mon compte'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Vous avez déjà un compte ?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Se connecter'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
