import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_flutter_advanced/const/const.dart';

final List<String> filterList = [
  "Black",
  "Bold",
  "Medium",
  "Regular",
  "Light"
];

class Filter extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.only(top: 12, bottom: 16),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(left:  16.0),
           child: Text("Select type", style: TextThemes.subtitle_1,),
         ),
         SizedBox(height: 12,),
         SizedBox(
           height: 32,
           child: ListView.builder(
             itemCount: filterList.length,
               scrollDirection: Axis.horizontal,
               padding: const EdgeInsets.symmetric(horizontal: 16,),

               itemBuilder: (context, index) => Padding(
                 padding: const EdgeInsets.only(right: 8.0),
                 child: ChoiceChip(
                   shape: filterList.first == filterList[index] ? StadiumBorder(
                     side: BorderSide(
                       width: 1,
                       color: ColorPalette.Violet100,
                       style: BorderStyle.solid
                     ),
                   ) : null,
                   label: Text(filterList[index]),
                   labelStyle: TextThemes.body_2.copyWith(color: filterList.first == filterList[index]
                       ? ColorPalette.Violet500
                       : ColorPalette.Black.withOpacity(0.38),
                   ),
                   selectedColor: ColorPalette.Violet50,
                   selected: filterList.first == filterList[index],

                 ),
               )
           ),
         )
       ],
     ),
   );
  }
}