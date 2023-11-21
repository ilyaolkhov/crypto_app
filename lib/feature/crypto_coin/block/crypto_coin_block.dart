import 'package:crypto_app/repositories/crypto_coins/crypto_coin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events_crypto_coin.dart';
part 'state.crypto_coin.dart';

class CryptoCoinDetailBloc extends Bloc<CryptoCoinDetailEvent, CryptoCoinDetailState> {
  CryptoCoinDetailBloc(this.abstractCoinsRepository) : super(CryptoCoinDetailInitial()) {
    on<LoadCryptoCoinDetail>(_load);
  }

  final AbstractCoinsRepository abstractCoinsRepository;
  Future<void> _load(
      LoadCryptoCoinDetail event,
      Emitter<CryptoCoinDetailState> emit,
      ) async {
    try {
      if (state is! CryptoCoinDetailsLoaded) {
        emit( CryptoCoinDetailsLoading());
      }

      final coinDetails =
      await abstractCoinsRepository.getCoinDetal(event.currentCode);

      emit(CryptoCoinDetailsLoaded(coinDetails));
    } catch (e){ }
  }

}