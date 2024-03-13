import 'package:flutter/material.dart';
import 'package:flutter_null_safety_icons/flutter_icons.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Mon compte',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mon compte',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Mon profil'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Mes payements'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Mes adresses de livraisons'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Paramètres',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Langue'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Devise'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Autres',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text('Conditions générales'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('Politiques de confidentialités'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text('À propos'),
                      trailing: const Icon(FlutterIcons.chevron_right_fea),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
