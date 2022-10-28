import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildImage extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final BoxFit? fit;
  const BuildImage(
      {Key? key,
      required this.image,
      required this.height,
      required this.width,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
      fit: fit,
    );
  }
}

class BuildImageN extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final BoxFit? fit;
  const BuildImageN(
      {Key? key,
      required this.image,
      required this.height,
      required this.width,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      errorBuilder: ((context, error, stackTrace) {
        return Image.asset(
          "images/deyofuLogo.jpg",
          height: height,
          width: width,
          fit: fit,
        );
      }),
      height: height,
      width: width,
      fit: fit,
    );
  }
}
