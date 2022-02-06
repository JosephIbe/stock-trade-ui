import 'package:flutter/material.dart';

class StatsBar extends StatelessWidget {

  const StatsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: const TextSpan(
            text: '123.342,62 ',
            style: TextStyle(
              color: Color(0xFF292D32),
              fontSize: 38.0,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'USD',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                )
              )
            ]
          ),
        ),
        const SizedBox(height: 10.0),
        RichText(
          text: const TextSpan(
            text: '\$120.234,21 ',
            style: TextStyle(
              color: Color(0xFF59C88A),
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: '+8.1%',
                style: TextStyle(
                  color: Color(0xFF292D32),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                )
              )
            ]
          ),
        )
      ],
    );
  }

}