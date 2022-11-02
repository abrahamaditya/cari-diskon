import 'package:caridiskon/BLoC/top_20_penawaran_page/detail_penawaran_page_BLoC.dart';
import 'package:caridiskon/BLoC/top_20_penawaran_page/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/card.dart';
import 'package:caridiskon/widget/chat_review_box.dart';
import 'package:caridiskon/widget/filter.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:clipboard/clipboard.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:html' as html;

Widget detailPenawaranContent3(BuildContext context, Top20Penawaran data) {
  return Container(
    //color: Color.fromARGB(255, 201, 199, 199),
    //height: Sizes.dp59(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Komentar dari Pengguna:",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: Sizes.dp58(context) + Sizes.dp8(context)),
            Text(
              "Atur Berdasarkan:",
              textAlign: TextAlign.start,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: lightGrey,
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(width: Sizes.dp4(context)),
            BlocBuilder<FilterSuka, String>(
              builder: (context, state) {
                return filterSukaButton(context, state);
              },
            ),
            SizedBox(width: Sizes.dp2(context)),
            BlocBuilder<FilterWaktu, String>(
              builder: (context, state) {
                return filterWaktuButton(context, state);
              },
            ),
          ],
        ),

        // chatReviewBox(context, data, index),
      ],
    ),
  );
}

Widget filterSukaButton(BuildContext context, String suka) {
  return InkWell(
    onTap: () {
      if (suka == "worst") {
        suka = "best";
      } else {
        suka = "worst";
      }
      BlocProvider.of<FilterSuka>(context).add(suka);
      BlocProvider.of<FilterNameDetail>(context).add("Suka");
    },
    child: Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: suka == "null" ? lightGrey : black),
        borderRadius: BorderRadius.circular(Sizes.dp1(context)),
      ),
      height: Sizes.dp8(context),
      width: Sizes.dp22(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Suka",
            style: GoogleFonts.inter(
              textStyle: TextStyle(color: black),
              fontSize: Sizes.dp3(context),
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(
            suka == "worst" ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            size: Sizes.dp6(context),
            color: black,
          ),
        ],
      ),
    ),
  );
}

Widget filterWaktuButton(BuildContext context, String waktu) {
  return InkWell(
    onTap: () {
      if (waktu == "farthest") {
        waktu = "latest";
      } else {
        waktu = "farthest";
      }
      BlocProvider.of<FilterWaktu>(context).add(waktu);
      BlocProvider.of<FilterNameDetail>(context).add("Waktu");
    },
    child: Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: waktu == "null" ? lightGrey : black),
        borderRadius: BorderRadius.circular(Sizes.dp1(context)),
      ),
      height: Sizes.dp8(context),
      width: Sizes.dp22(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Waktu",
            style: GoogleFonts.inter(
              textStyle: TextStyle(color: black),
              fontSize: Sizes.dp3(context),
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(
            waktu == "farthest" ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            size: Sizes.dp6(context),
            color: black,
          ),
        ],
      ),
    ),
  );
}
