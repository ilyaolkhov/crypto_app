import 'package:crypto_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'routers/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: dark,
        routes: routes
    );
  }
}