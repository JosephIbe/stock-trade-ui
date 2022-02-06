import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:varens_stock/presentation/journeys/screens/charts_view.dart';
import 'package:varens_stock/presentation/journeys/screens/home_view.dart';
import 'package:varens_stock/presentation/journeys/screens/profile_view.dart';
import 'package:varens_stock/presentation/journeys/screens/wallet_view.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  var selectedIndex = 1;

  final _pages = [
    const HomeView(),
    const ChartsView(),
    const WalletView(),
    const ProfileView(),
  ];

  Size? size;

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: _pages[selectedIndex],
        bottomNavigationBar: Container(
          width: size!.width,
          height: 55.0,
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                // width: size!.width * 0.25,
                width: 80.0,
                child: InkWell(
                  onTap: ()=> setState(()=> selectedIndex = 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/home_view.svg',
                        width: 20.0,
                        height: 20.0,
                        color: selectedIndex == 0 ? const Color(0xFF4941F2) : Colors.black54,
                      ),
                      const SizedBox(height: 5.0),
                      selectedIndex == 0
                        ? Container(
                        height: 8.0,
                        width: 8.0,
                        decoration: BoxDecoration(
                            color: selectedIndex == 0 ? const Color(0xFF4941F2) : Colors.transparent,
                            shape: BoxShape.circle
                        ),
                      ) : Container(),
                    ],
                  ),
                )
              ),
              SizedBox(
                // width: size!.width * 0.25,
                width: 80.0,
                child: InkWell(
                  onTap: ()=> setState(() => selectedIndex = 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/charts_view.svg',
                        width: 20.0,
                        height: 20.0,
                        color: selectedIndex == 1 ? const Color(0xFF4941F2) : Colors.black54,
                      ),
                      const SizedBox(height: 5.0),
                      selectedIndex == 1
                          ? Container(
                        height: 8.0,
                        width: 8.0,
                        decoration: BoxDecoration(
                            color: selectedIndex == 1 ? const Color(0xFF4941F2) : Colors.transparent,
                            shape: BoxShape.circle
                        ),
                      ) : Container(),
                    ],
                  ),
                )
              ),
              SizedBox(
                // width: size!.width * 0.25,
                width: 80.0,
                child: InkWell(
                  onTap: ()=> setState(()=> selectedIndex = 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/wallet_view.svg',
                        width: 20.0,
                        height: 20.0,
                        color: selectedIndex == 2 ? const Color(0xFF4941F2) : Colors.black54,
                      ),
                      const SizedBox(height: 5.0),
                      selectedIndex == 2
                          ? Container(
                        height: 8.0,
                        width: 8.0,
                        decoration: BoxDecoration(
                          color: selectedIndex == 2 ? const Color(0xFF4941F2) : Colors.transparent,
                          shape: BoxShape.circle
                        ),
                      ) : Container(),
                    ],
                  ),
                )
              ),
              SizedBox(
                // width: size!.width * 0.25,
                width: 80.0,
                child: InkWell(
                  onTap: ()=> setState(()=> selectedIndex = 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/profile_view.svg',
                        width: 20.0,
                        height: 20.0,
                        color: selectedIndex == 3 ? const Color(0xFF4941F2) : Colors.black54,
                      ),
                      const SizedBox(height: 5.0),
                      selectedIndex == 3
                          ? Container(
                        height: 8.0,
                        width: 8.0,
                        decoration: BoxDecoration(
                            color: selectedIndex == 3 ? const Color(0xFF4941F2) : Colors.transparent,
                            shape: BoxShape.circle
                        ),
                      ) : Container(),
                    ],
                  ),
                )
              ),
            ]
          ),
        )
      )
    );

  }

}