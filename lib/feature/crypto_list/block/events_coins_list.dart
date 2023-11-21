part of 'coins_block.dart';
class CoinsListEvent{}
class LoadCoinsList extends CoinsListEvent{
  final Completer? completer;

  LoadCoinsList({this.completer});
}

