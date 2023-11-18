import 'package:crypto_app/repositories/crypto_coins/crypto_coins_repositories.dart';
import 'package:crypto_app/repositories/crypto_coins/modals/crypto_coin_modal.dart';
import 'package:flutter/material.dart';

import '../widget/widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<CryptoCoin>? _cryptoCoinsList;
  @override
  void initState() {
_loadCryptoApp();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text(
          'Crypto List',
        ),
        centerTitle: true,
      ),
      body: (_cryptoCoinsList == null)? Center(child: CircularProgressIndicator())
          : ListView.separated(
          separatorBuilder: (context, i) => Divider(
            height: 3,
            color: theme.dividerColor,
          ),
          itemCount: _cryptoCoinsList!.length,
          itemBuilder: (context, i) {
            final coin = _cryptoCoinsList![i];
            return CryptoCoinTitile(coin: coin);
          }),
    );
  }

  Future<void> _loadCryptoApp() async {
    _cryptoCoinsList = await CryptoCoinsRepositories().getCoins();
      setState(() {
      });
  }
}

