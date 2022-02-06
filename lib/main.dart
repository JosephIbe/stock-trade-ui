import 'package:flutter/material.dart';
import 'package:varens_stock/presentation/journeys/landing.dart';

void main() {
  runApp(const StockTraderApp());
}

class StockTraderApp extends StatelessWidget {

  const StockTraderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StockTrader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const Scaffold(
        backgroundColor: Colors.white70,
        body: Landing(),
      ),
    );
  }
}