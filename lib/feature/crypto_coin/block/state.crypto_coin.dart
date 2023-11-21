part of 'crypto_coin_block.dart';
class CryptoCoinDetailState {}
class CryptoCoinDetailInitial extends CryptoCoinDetailState{}

class CryptoCoinDetailsLoading extends CryptoCoinDetailState {

}

class CryptoCoinDetailsLoaded extends CryptoCoinDetailState {
final CryptoCoinDetal coin;
  CryptoCoinDetailsLoaded(this.coin);
}

class CryptoCoinDetailsLoadingFailure extends CryptoCoinDetailState {
  final Object exception;
  CryptoCoinDetailsLoadingFailure({required this.exception});
}