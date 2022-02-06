import 'package:flutter/material.dart';

Size? size;

class AboutChart extends StatelessWidget {

  const AboutChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      width: size!.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(
              color: Color(0xFF292D32),
              fontSize: 16.0
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis posuere non tellus dictum at. Integer eget sed amet nisi, elit odio.',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }

}