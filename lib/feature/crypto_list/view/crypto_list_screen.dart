import 'package:crypto_app/feature/crypto_list/block/coins_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../repositories/crypto_coins/crypto_coin.dart';
import '../widget/widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _cryptoListBlock = CoinsListBloc(GetIt.I<AbstractCoinsRepository>());

  @override
  void initState() {
    _cryptoListBlock.add(LoadCoinsList());
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
        body: BlocBuilder<CoinsListBloc, CoinsListState>(
            bloc: _cryptoListBlock,
            builder: (context, state) {
              if (state is CoinsListLoaded) {
                return ListView.separated(
                    separatorBuilder: (context, i) => Divider(
                          height: 3,
                          color: theme.dividerColor,
                        ),
                    itemCount: state.coinsList.length,
                    itemBuilder: (context, i) {
                      final coin = state.coinsList![i];
                      return CryptoCoinTitile(coin: coin);
                    });
              }
              if (state is CoinsListLoadingError) {
                return Center(child: Text('Error'));
              }
              return Center(child: CircularProgressIndicator());
            }
            )
        //
        );
  }
}
