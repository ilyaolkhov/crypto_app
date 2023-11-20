import 'package:crypto_app/crypto_list_app.dart';
import 'package:crypto_app/repositories/crypto_coins/crypto_coin.dart';
import 'package:crypto_app/repositories/crypto_coins/crypto_coins_repositories.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';



void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(()=>CryptoCoinsRepositories(dio: Dio()));

  runApp(const MyApp());
}




