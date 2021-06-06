import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_flutter_advanced/const/const.dart';

import '../screen_home.dart';

final List<FriendModel> friendList = [
  FriendModel("Corey George", "Developer", Images.friends_1),
  FriendModel("Ahmad Vetrovs", "Developer", Images.friends_2),
  FriendModel("Cristofer Workman", "Developer", Images.friends_3),
  FriendModel("Tiana Korsgaard", "Developer", Images.friends_4),
];

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friends",
            style: TextThemes.body_2,
          ),
          ListView.separated(
            itemBuilder: (context, index) => Friend(
              friendList[index].name,
              friendList[index].position,
              friendList[index].avatar,
            ),
            separatorBuilder: (context, index) => friendList.length - 1 != index
                ? Divider(
                    height: 1,
                    thickness: 1,
                    color: ColorPalette.Grey200,
                    indent: 56,
                  )
                : null,
            itemCount: friendList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(bottom: 24),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "ADD FRIENDS",
                    style: TextThemes.button
                        .copyWith(color: ColorPalette.Black.withOpacity(0.87)),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  SvgPicture.asset(MainIcons.add),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FriendModel {
  final String name;
  final String position;
  final String avatar;

  FriendModel(this.name, this.position, this.avatar);
}
