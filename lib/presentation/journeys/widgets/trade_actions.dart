import 'package:flutter/material.dart';

Size? size;

class TradeActions extends StatelessWidget {

  const TradeActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size!.width,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 150.0,
            height: 70.0,
            decoration: BoxDecoration(
                color: const Color(0xFFEB876B).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: const Center(
              child: Text(
                'Sell',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFEB876B)
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            width: 150.0,
            height: 70.0,
            decoration: BoxDecoration(
                color: const Color(0xFF0CB1A0),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: const Center(
              child: Text(
                'Buy',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }

}