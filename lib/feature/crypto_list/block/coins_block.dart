import 'dart:async';

import 'package:crypto_app/repositories/crypto_coins/abstract_repository_coins.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/crypto_coins/crypto_coin.dart';
part 'events_coins_list.dart';
part 'state_coins_list.dart';

class CoinsListBloc extends Bloc<CoinsListEvent, CoinsListState> {
  CoinsListBloc(this.coinsRepository) : super(CoinsListInitial()) {
    on<LoadCoinsList>((event, emit) async {
      try {
        final coinsList = await coinsRepository.getCoins();
        emit(CoinsListLoaded(coinsList: coinsList));
      } catch (e) {
        emit(CoinsListLoadingError(exception: e));
      }
      finally{
        event.completer?.complete();
      }

    });
  }
  final AbstractCoinsRepository coinsRepository ;
}

