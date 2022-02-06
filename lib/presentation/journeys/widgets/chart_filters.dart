import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChartFilters extends StatelessWidget {

  const ChartFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Row(
        children: [
          const SizedBox(
            width: 50.0,
            child: Text(
              '24H',
              style: TextStyle(
                color: Color(0xFF0CB1A0),
                fontSize: 14.0,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          const SizedBox(
            width: 50.0,
            child: Text(
              '1W',
              style: TextStyle(
                  color: Color(0xFFB8B8B8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          const SizedBox(
            width: 50.0,
            child: Text(
              '1M',
              style: TextStyle(
                  color: Color(0xFFB8B8B8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          const SizedBox(
            width: 50.0,
            child: Text(
              '1Y',
              style: TextStyle(
                  color: Color(0xFFB8B8B8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          const SizedBox(
            width: 50.0,
            child: Text(
              'All',
              style: TextStyle(
                  color: Color(0xFFB8B8B8),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          SizedBox(
            width: 50.0,
            child: SvgPicture.asset('assets/svgs/filter-icon.svg')
          ),
        ],
      ),
    );
  }

}