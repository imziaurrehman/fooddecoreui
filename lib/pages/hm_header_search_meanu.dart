import 'package:flutter/material.dart';

class HmHeaderSearchAndMenuSection extends StatelessWidget {
  const HmHeaderSearchAndMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Icon(Icons.menu), Spacer(), Icon(Icons.search)],
    );
  }
}
