import 'package:crypto_app/repositories/crypto_coins/modals/crypto_coin_modal.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoins();
  Future<CryptoCoinDetal> getCoinDetal(String currentCode);


}