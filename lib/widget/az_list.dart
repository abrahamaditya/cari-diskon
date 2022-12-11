import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

Widget azList(BuildContext context, AutoScrollController controller) {
  ScrollController _controller;
  return Row(
    children: [
      InkWell(
        onTap: () {
          controller.scrollToIndex(0, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "A",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(1, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "B",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "C",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(2, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "D",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "E",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "F",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(3, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "G",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "H",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "I",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "J",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(7, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "K",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "L",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(8, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "M",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "N",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "O",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(9, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "P",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "Q",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(11,
              preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "R",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(12,
              preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "S",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {
          controller.scrollToIndex(18,
              preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          color: white,
          child: Text(
            "T",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "U",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "V",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "W",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "X",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "Y",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: Sizes.dp8(context)),
      InkWell(
        onTap: () {},
        child: Container(
          color: white,
          child: Text(
            "Z",
            textAlign: TextAlign.start,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: lightGrey,
                fontSize: Sizes.dp5(context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
