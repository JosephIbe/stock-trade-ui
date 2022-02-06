import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Size? size;

// ignore: must_be_immutable
class MarketStats extends StatelessWidget {

  MarketStats({Key? key}) : super(key: key);

  var svgPaths = [
    'assets/svgs/presention-chart.svg',
    'assets/svgs/volume-bar-chart.svg',
    'assets/svgs/chart-success.svg',
  ];

  var titles = ['Market Cap', 'Volume (24h)', 'Available Supply'];

  var subTitles = ['41,228.00 BTC', '\$12,999.00', '9,771.64'];

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(30.0),
      width: size!.width,
      constraints: const BoxConstraints(
        minHeight: 100.0,
        maxHeight: 200.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Market Stats',
            style: TextStyle(
                color: Color(0xFF292D32),
                fontSize: 16.0
            ),
          ),
          const SizedBox(height: 10.0),
          ListView.builder(
            shrinkWrap: true,
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Container(
                  width: size!.width,
                  height: 50.0,
                  color: index % 2 == 0 ? const Color(0xFFF9FAFF) : Colors.transparent,
                  child: ListTile(
                    leading: SvgPicture.asset(svgPaths[index]),
                    title: Text(
                      titles[index],
                      style: const TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 12.0,
                      ),
                    ),
                    trailing: Text(
                      subTitles[index],
                      style: const TextStyle(
                        color: Color(0xFF292D32),
                        fontSize: 12.0,
                      ),
                    ),
                  )
              );
            },
          )
        ],
      ),
    );
  }

}