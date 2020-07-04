import 'package:flutter/material.dart';
import 'package:agroapp/constants.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image(
          image: Svg(
            iconSrc,
            width:22,
            height: 22,

          ),
        ),
      ),
    );
  }
}
