import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';

Widget cardV4(BuildContext context, String path, String id) {
  return SizedBox(
    width: Sizes.dp40(context),
    height: Sizes.dp30(context),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.dp2(context)),
      ),
      elevation: 3.5,
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        onTap: () {
          Application.router.navigateTo(
            context,
            "/toko/$id",
          );
        },
        child: Container(
          padding: EdgeInsets.all(Sizes.dp9(context)),
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
