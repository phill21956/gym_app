import 'package:flutter/material.dart';

class BgImageWidget extends StatelessWidget {
  const BgImageWidget({
    Key key,
    @required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/gym1.jpg',
      filterQuality: FilterQuality.low,
      fit: BoxFit.cover,
      height: deviceSize.height,
      width: deviceSize.width,
    );
  }
}
