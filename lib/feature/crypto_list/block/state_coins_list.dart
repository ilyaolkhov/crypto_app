part of 'coins_block.dart';
class CoinsListState{}
class CoinsListInitial extends CoinsListState{}
class CoinsListLoading extends CoinsListState{}
class CoinsListLoaded extends CoinsListState{
  final List<CryptoCoin> coinsList;

  CoinsListLoaded({required this.coinsList});
}
class CoinsListLoadingError extends CoinsListState{
final Object? exception;

  CoinsListLoadingError({this.exception});
}