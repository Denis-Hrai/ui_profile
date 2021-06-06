import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_flutter_advanced/const/const.dart';

class Friend extends StatelessWidget{
  final String name;
  final String position;
  final String avatar;

  const Friend(
    this.name,
    this.position,
    this.avatar
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        radius: 20,
        child: Image.asset(avatar),
      ),
      title: Text(
        name,
        style: TextThemes.subtitle_1,
      ),
      subtitle: Text(
        position,
        style: TextThemes.body_2.copyWith(color: ColorPalette.Black.withOpacity(0.6)),
      ),
      trailing: IconButton(
        icon: SvgPicture.asset(
          MainIcons.close,
          color: ColorPalette.Red200,
        ),
        onPressed: (){},
    ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    );
  }
}