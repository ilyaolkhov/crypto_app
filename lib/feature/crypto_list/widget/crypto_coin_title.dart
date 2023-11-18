
import 'package:crypto_app/repositories/crypto_coins/modals/crypto_coin_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTitile extends StatelessWidget {
  const CryptoCoinTitile({
    super.key,required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      leading:
      Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.priceInUSD} \$',
        style: theme.textTheme.labelSmall,
      ),
      onTap: (){
        Navigator.of(context).pushNamed('coin', arguments: coin);
      },
    );
  }
}