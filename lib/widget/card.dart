import 'package:caridiskon/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card(BuildContext context, String path) {
  return SizedBox(
    width: Sizes.dp48(context),
    height: Sizes.dp30(context) + Sizes.dp4(context),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.dp2(context)),
      ),
      elevation: 3.5,
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(Sizes.dp12(context)),
          height: Sizes.dp12(context),
          width: Sizes.dp40(context),
          child: Image.asset(
            path,
          ),
        ),
      ),
    ),
  );
}
