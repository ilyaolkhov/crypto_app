part of 'crypto_coin_block.dart';
class CryptoCoinDetailEvent{}
class LoadCryptoCoinDetail extends CryptoCoinDetailEvent{
  final String currentCode;

  LoadCryptoCoinDetail({required this.currentCode});

}
