import 'package:flutter/material.dart';
import 'package:sc_flutter_advanced/const/colors.dart';

class DividerWidget extends StatelessWidget {

  const DividerWidget({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      height: 1,
      color: ColorPalette.Grey200,
      indent: 17,
      endIndent: 18,
    );
  }
}
