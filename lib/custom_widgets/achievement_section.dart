import 'package:flutter/material.dart';

class Achievement extends StatelessWidget {
  const Achievement({
    super.key,
    required this.experienceCount,
    required this.projectCount,
    required this.clientCount,
    required this.widgetHeight,
    this.alignment,
    required this.countsTextStyle,
    required this.labelsTextStyle,
  });

  final int experienceCount;
  final int projectCount;
  final int clientCount;
  final double widgetHeight;
  final CrossAxisAlignment? alignment;
  final TextStyle countsTextStyle;
  final TextStyle labelsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: alignment ?? CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BoxItem(
            count: experienceCount,
            text: 'Years of Experience',
            boxColor: Colors.green,
            height: widgetHeight,
            countsTextStyle: countsTextStyle,
            labelsTextStyle: labelsTextStyle,
          ),
        ),
        Expanded(
          child: BoxItem(
            fontColor: Colors.black,
            count: projectCount,
            text: 'Handled Projects',
            boxColor: Colors.amber.shade600,
            height: widgetHeight,
            countsTextStyle: countsTextStyle,
            labelsTextStyle: labelsTextStyle,
          ),
        ),
        Expanded(
          child: BoxItem(
            count: clientCount,
            text: 'Clients',
            boxColor: Colors.pink,
            height: widgetHeight,
            countsTextStyle: countsTextStyle,
            labelsTextStyle: labelsTextStyle,
          ),
        ),
      ],
    );
  }
}

class BoxItem extends StatelessWidget {
  const BoxItem({
    super.key,
    required this.count,
    required this.text,
    required this.boxColor,
    required this.height,
    this.fontColor,
    required this.countsTextStyle,
    required this.labelsTextStyle,
  });
  final int count;
  final String text;
  final Color boxColor;
  final double height;
  final Color? fontColor;
  final TextStyle countsTextStyle;
  final TextStyle labelsTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${count.toString()}+',
            style: countsTextStyle.copyWith(
              color: fontColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(text, textAlign: TextAlign.center, style: labelsTextStyle),
        ],
      ),
    );
  }
}
