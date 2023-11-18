import 'package:crypto_app/repositories/crypto_coins/modals/crypto_coin_modal.dart';
import 'package:dio/dio.dart';
import 'package:flutter/scheduler.dart';

class CryptoCoinsRepositories {
  Future<List<CryptoCoin>> getCoins() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,XRP,MATIC,SOL,USDT,LTC,DOGE&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries
        .map(
          (e) {
            final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
            final price = usdData['PRICE'];
            final imageUrl = usdData['IMAGEURL'];
             return CryptoCoin(
              name: e.key,
              priceInUSD: price,
                 imageUrl: 'https://www.cryptocompare.com/$imageUrl'
          );
          }
        )
        .toList();
    return cryptoCoinsList;

  }
}
