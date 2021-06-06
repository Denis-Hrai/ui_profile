import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sc_flutter_advanced/const/const.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{

  MainAppBar():preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      backgroundColor: ColorPalette.White,
      leading: IconButton(
        icon: SvgPicture.asset(
          MainIcons.back,
          color: ColorPalette.Black.withOpacity(0.6),
        ),
        onPressed: (){},
      ),
      title: Text(
        "Profile",
        style: TextThemes.headline_6,
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(MainIcons.more),
          onPressed: (){},
        )
      ],
    );
  }
}
