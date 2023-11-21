import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final dark = ThemeData(

appBarTheme: const AppBarTheme(
backgroundColor: CupertinoColors.darkBackgroundGray,
titleTextStyle: TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.w500),
),


listTileTheme: const ListTileThemeData(iconColor: Colors.white),
dividerColor: Colors.white12,
scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
primaryColor: Colors.yellow,
textTheme: TextTheme(
bodyMedium: const TextStyle(
color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
labelSmall: TextStyle(
color: Colors.white.withOpacity(0.6),
fontSize: 14,
fontWeight: FontWeight.w700),
),
useMaterial3: true,
);