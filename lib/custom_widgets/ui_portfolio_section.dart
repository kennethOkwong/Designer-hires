import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.widgetHeight,
    this.alignment,
  });

  final String image1;
  final String image2;
  final String image3;
  final double widgetHeight;
  final CrossAxisAlignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'UI Portfolio',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: alignment ?? CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: BoxItem(
                    imageURL: image1,
                    isReadMore: true,
                    height: widgetHeight,
                  ),
                ),
                Expanded(
                  child: BoxItem(
                    imageURL: image2,
                    isReadMore: false,
                    height: widgetHeight,
                  ),
                ),
                Expanded(
                  child: BoxItem(
                    imageURL: image3,
                    isReadMore: false,
                    height: widgetHeight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BoxItem extends StatelessWidget {
  const BoxItem({
    super.key,
    required this.height,
    required this.imageURL,
    required this.isReadMore,
  });
  // final int count;
  // final String text;
  // final Color boxColor;
  final double height;
  final String imageURL;
  final bool isReadMore;

  @override
  Widget build(BuildContext context) {
    return isReadMore
        ? Container(
            height: height,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(imageURL),
                fit: BoxFit.cover,
                opacity: 0.3,
              ),
            ),
            child: const Center(child: Text('Read More')))
        : Container(
            height: height,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(imageURL),
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}
