import 'package:crypto_app/repositories/crypto_coins/modals/crypto_coin_modal.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
late CryptoCoin coin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(coin.name),),);
  }
}
