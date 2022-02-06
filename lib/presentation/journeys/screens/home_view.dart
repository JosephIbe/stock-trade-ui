import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text('HomeView'),
          ),
        ),
      ),
    );
  }

}