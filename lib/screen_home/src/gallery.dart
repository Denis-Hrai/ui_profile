import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_flutter_advanced/const/const.dart';

final List<String> imagesList = [
  Images.images_1,
  Images.images_2,
  Images.images_3,
  Images.images_4,
  Images.images_5,
  Images.images_6,
  Images.images_7,
  Images.images_8,
  Images.images_9,
];

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My media", style: TextThemes.headline_5,),
          GridView.builder(
            itemCount: imagesList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              mainAxisSpacing: 13,
              crossAxisSpacing: 17,
            ),
            itemBuilder: (context, index) => GalleryItem(imagesList[index]),
          ),
        ],
      ),
    );
  }
}

class GalleryItem extends StatelessWidget {
  final String image;

  GalleryItem(this.image);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: ColorPalette.ColorForShadow.withOpacity(0.08),
                  blurRadius: 2.5,
                  offset: Offset(0, 2.5),
                ),
                BoxShadow(
                  color: ColorPalette.ColorForShadow.withOpacity(0.06),
                  blurRadius: 2.5,
                  offset: Offset(0, 2.5),
                )
              ]),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: GestureDetector(
            onTap: (){},
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(
                    width: 1,
                    color: ColorPalette.White,
                    style: BorderStyle.solid),
              ),
              child: SvgPicture.asset(
                MainIcons.close,
                color: ColorPalette.White,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
