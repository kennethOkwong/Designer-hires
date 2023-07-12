import 'package:flutter/material.dart';

class HireMe extends StatelessWidget {
  const HireMe({
    super.key,
    required this.textStyle,
    this.height,
  });

  final TextStyle textStyle;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: SizedBox(
            width: double.infinity,
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Bringing Your Ideas To Life Through UI Design.',
                style: textStyle,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Hire Me 👋',
              // style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
