import 'package:flutter/material.dart';
import 'package:sc_flutter_advanced/components/components.dart';
import 'package:sc_flutter_advanced/const/const.dart';
import 'package:sc_flutter_advanced/screen_home/screen_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.White,

      appBar: MainAppBar(),

      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Info(
                avatar: Images.tinaRAvatar,
                name: "Tiana Rosser",
                position: "Developer",
                onTap: (){},
              ),
              const SizedBox(height: 24,),
              const DividerWidget(),
              Filter(),
              const DividerWidget(),
              Friends(),
              const DividerWidget(),
              const SizedBox(height: 16,),
              Gallery(),
            ],
          ),
      ),
    );
  }
}

