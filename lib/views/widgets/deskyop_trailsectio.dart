import 'package:flutter/material.dart';

class DesktopTrailSection extends StatelessWidget {
  const DesktopTrailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 415 / 210,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
