import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class HmHeaderTextSection extends StatelessWidget {
  const HmHeaderTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: 'Healthy Salads\n',
          style: TextStyle(
              color: black, fontSize: 30, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: 'we made fresh and healthy foods.',
                style: TextStyle(color: grey, fontSize: 12))
          ]),
    );
  }
}
