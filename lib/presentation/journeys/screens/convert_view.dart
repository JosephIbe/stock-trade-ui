import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:varens_stock/data/models/coin_data.dart';

Size? size;

class ConvertCoinView extends StatelessWidget {

  ConvertCoinView({Key? key}) : super(key: key);

  var coinsData = [
    CoinDataModel(
      svgPath: 'assets/svgs/bitcoin.svg',
      coinType: 'BTC',
      textColor: 0XFFF7931A,
      graphPath: 'assets/images/bitcoin-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/ethereum.svg',
        coinType: 'ETH',
        textColor: 0XFF54575B,
        graphPath: 'assets/images/eth-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/xrp.svg',
        coinType: 'XRP',
        textColor: 0XFF1276A7,
        graphPath: 'assets/images/xrp-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/litecoin.svg',
        coinType: 'LTC',
        textColor: 0XFFF7931A,
        graphPath: 'assets/images/litecoin-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/bitcoin.svg',
        coinType: 'BTC',
        textColor: 0XFFF7931A,
        graphPath: 'assets/images/bitcoin-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/ethereum.svg',
        coinType: 'ETH',
        textColor: 0XFF54575B,
        graphPath: 'assets/images/eth-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/xrp.svg',
        coinType: 'XRP',
        textColor: 0XFF1276A7,
        graphPath: 'assets/images/xrp-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/litecoin.svg',
        coinType: 'LTC',
        textColor: 0XFFF7931A,
        graphPath: 'assets/images/litecoin-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/bitcoin.svg',
        coinType: 'BTC',
        textColor: 0XFFF7931A,
        graphPath: 'assets/images/bitcoin-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/ethereum.svg',
        coinType: 'ETH',
        textColor: 0XFF54575B,
        graphPath: 'assets/images/eth-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/xrp.svg',
        coinType: 'XRP',
        textColor: 0XFF1276A7,
        graphPath: 'assets/images/xrp-graph.png'
    ),
    CoinDataModel(
        svgPath: 'assets/svgs/litecoin.svg',
        coinType: 'LTC',
        textColor: 0XFFF7931A,
        graphPath: 'assets/images/litecoin-graph.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size!.width,
          height: size!.height,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Container(
                height: size!.height,
                margin: const EdgeInsets.only(top: 120.0),
                padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white
                ),
                // child: Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Convert to',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF292D32),
                              ),
                            ),
                            Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                                    border: Border.all(color: const Color(0xFF292D32), width: 1.0)
                                ),
                                child: const Center(
                                  child: Icon(Icons.close, size: 20.0,),
                                )
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: coinsData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 100.0,
                              width: size!.width,
                              color: index % 2 == 0 ? const Color(0xFFF9FAFF) : Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 56.0,
                                        width: 56.0,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                                          // color: index % 2 == 0 ? Color(0xFFF9FAFF) : Colors.transparent,
                                        ),
                                        padding: const EdgeInsets.all(10.0),
                                        child: Center(
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: SvgPicture.asset(coinsData[index].svgPath),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20.0),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            coinsData[index].coinType,
                                            style: TextStyle(
                                                color: Color(coinsData[index].textColor),
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                          const Text(
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
                                  // const SizedBox(width: 20.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(coinsData[index].graphPath, ),
                                      const SizedBox(width: 10.0),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '\$24,150.17',
                                            style: TextStyle(
                                              color: Color(0xFF292D32),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '2.73 BTC',
                                            style: TextStyle(
                                              color: Color(0xFF292D32),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  // )
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: ()=> Navigator.pop(context),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset('assets/svgs/arrow-left.svg'),
                      ),
                    ),
                    const Text(
                      'Exchange',
                      style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 30.0
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

}