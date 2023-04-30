import 'package:flutter/material.dart';

class HireMe extends StatelessWidget {
  const HireMe({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Card(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Text(
                      'Bringing Your Ideas To Life Through UI Design.',
                      style: textStyle,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Hire Me 👋',
                        // style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
