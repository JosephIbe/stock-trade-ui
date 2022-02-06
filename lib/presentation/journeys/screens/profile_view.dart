import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {

  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text('ProfileView'),
          ),
        ),
      ),
    );
  }

}