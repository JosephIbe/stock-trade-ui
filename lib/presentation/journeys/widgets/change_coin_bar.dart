import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:varens_stock/presentation/journeys/screens/convert_view.dart';

Size? size;

class ChangeCoinBar extends StatelessWidget {

  const ChangeCoinBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size!.width,
      height: 100.0,
      color: const Color(0xFFF9FAFF),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 56.0,
                width: 56.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orangeAccent.shade100,
                    ),
                    child: SvgPicture.asset('assets/svgs/bitcoin.svg'),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'BTC',
                    style: TextStyle(
                      color: Color(0xFFF7931A),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    '-1.32%',
                    style: TextStyle(
                      color: Color(0xFF292D32),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(width: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/bitcoin-graph.png', ),
              const SizedBox(width: 10.0),
              InkWell(
                onTap: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ConvertCoinView())
                ),
                child: Container(
                  width: 70.0,
                  height: 45.0,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                    border: Border.all(color: Colors.grey, width: 1.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Change',
                      style: TextStyle(
                          color: Color(0xFF5149F7),
                          fontSize: 16.0
                      ),
                    ),
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }

}