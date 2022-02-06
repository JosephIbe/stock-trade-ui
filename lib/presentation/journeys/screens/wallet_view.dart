import 'package:flutter/material.dart';

class WalletView extends StatelessWidget {

  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text('WalletView'),
          ),
        ),
      ),
    );
  }

}