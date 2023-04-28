import 'package:flutter/material.dart';
class TestImage extends StatefulWidget {
  const TestImage({Key? key}) : super(key: key);

  @override
  State<TestImage> createState() => _TestImageState();
}

class _TestImageState extends State<TestImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network("https://frutsnab.ru/wa-data/public/shop/products/17/00/17/images/33/33.400@2x.jpg"),
      ),
    );
  }
}
