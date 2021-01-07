import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String assetName1 = "assets/icons/facebook.svg";
  final String assetName2 = "assets/icons/twitter.svg";
  final String assetName3 = "assets/icons/google-plus.svg";

  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/pic.png",
              width: size.width * 0.8,
            ),
          ),

          Positioned(
            bottom: 2,
            left: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                SvgPicture.asset(assetName1,height: 40.0,
                  width: 40.0,),
                SizedBox(width: 50),
                SvgPicture.asset(assetName2,height: 40.0,
                  width: 40.0,),
                SizedBox(width: 50),
                SvgPicture.asset(assetName3,height: 40.0,
                  width: 40.0,),
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }
}