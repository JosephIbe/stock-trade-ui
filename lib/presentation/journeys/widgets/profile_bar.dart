import 'package:flutter/material.dart';

Size? size;

class ProfileBar extends StatelessWidget {

  const ProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size!.width,
      height: 50.0,
      margin: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 49.0,
              width: 49.0,
              padding: const EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  shape: BoxShape.circle
              ),
              child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF5149F7),
                    ),
                    child: Image.asset('assets/images/profile-pic.png', fit: BoxFit.cover,),
                  )
              )
          ),
          Container(
              height: 49.0,
              width: 49.0,
              padding: const EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  shape: BoxShape.circle
              ),
              child: Center(
                child: Image.asset('assets/images/profile-actions.png', fit: BoxFit.cover,),
              )
          )
        ],
      ),
    );
  }
}
