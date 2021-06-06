import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_flutter_advanced/const/const.dart';

class Info extends StatelessWidget {

  final String name;
  final String position;
  final String avatar;
  final Function onTap;

  const Info({
    Key key,
    this.name,
    this.position,
    this.avatar,
    this.onTap
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 59,
                  child: Image.asset(avatar),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: ColorPalette.Violet500,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: ColorPalette.White,
                            width: 1.5,
                            style: BorderStyle.solid),
                      ),
                      child: SvgPicture.asset(MainIcons.add, color: ColorPalette.White),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Text(
          name,
          style: TextThemes.subtitle_1,
        ),
        Text(
          position,
          style: TextThemes.caption,
        ),
      ],
    );
  }
}
