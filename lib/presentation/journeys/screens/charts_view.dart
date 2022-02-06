import 'package:flutter/material.dart';

import 'package:varens_stock/presentation/journeys/widgets/about_chart.dart';
import 'package:varens_stock/presentation/journeys/widgets/change_coin_bar.dart';
import 'package:varens_stock/presentation/journeys/widgets/chart_filters.dart';
import 'package:varens_stock/presentation/journeys/widgets/coin_chart.dart';
import 'package:varens_stock/presentation/journeys/widgets/market_stats.dart';
import 'package:varens_stock/presentation/journeys/widgets/profile_bar.dart';
import 'package:varens_stock/presentation/journeys/widgets/stats_bar.dart';
import 'package:varens_stock/presentation/journeys/widgets/trade_actions.dart';

class ChartsView extends StatefulWidget {

  const ChartsView({Key? key}) : super(key: key);

  @override
  _ChartsViewState createState() => _ChartsViewState();
}

class _ChartsViewState extends State<ChartsView> {

  Size? size;

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size!.width,
          height: size!.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProfileBar(),
                const StatsBar(),
                const SizedBox(height: 27.0),
                const ChangeCoinBar(),
                const ChartFilters(),
                const CoinChart(),
                const TradeActions(),
                const AboutChart(),
                MarketStats()
              ],
            ),
          )
        ),
      )
    );
  }

}