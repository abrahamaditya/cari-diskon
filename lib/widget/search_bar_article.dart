import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchbarArticle extends StatelessWidget {
  final TextEditingController? controller;
  final Application? route;
  const SearchbarArticle({
    Key? key,
    this.controller,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // decoration: BoxDecoration(
          //   border: Border.all(color: grey),
          //   borderRadius: BorderRadius.circular(5),
          //   color: Colors.white,
          // ),
          alignment: Alignment.center,
          constraints: BoxConstraints(
            maxHeight: Sizes.dp9(context),
            maxWidth: Sizes.dp49(context),
          ),
          child: TextFormField(
            cursorColor: black,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: black,
                fontSize: Sizes.dp3(context),
                fontWeight: FontWeight.w600,
              ),
            ),
            controller: controller,
            onFieldSubmitted: (value) {
              //Application.router.navigateTo(context, "/pencarian/$value");
            },
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                bottom: Sizes.dp2(context),
                //top: Sizes.dp2(context) - Sizes.dp1(context),
                left: Sizes.dp4(context),
              ),

              labelStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: grey,
                  fontSize: Sizes.dp3(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
              suffixStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: grey,
                  fontSize: Sizes.dp3(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
              floatingLabelStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: grey,
                  fontSize: Sizes.dp3(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
              filled: true,
              fillColor: greyblue,
              border: InputBorder.none,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(5),
              //   borderSide: const BorderSide(color: grey),
              //   gapPadding: 0,
              // ),
              suffixIcon: Icon(
                Icons.search,
                size: Sizes.dp5(context),
                color: grey,
              ),
              hintStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: grey,
                  fontSize: Sizes.dp3(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
              hintText: "Cari artikel...",
            ),
          ),
        ),
      ],
    );
  }
}
