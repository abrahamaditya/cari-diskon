import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/filter_tukar_poin_page.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tukarPoinContent1(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    //color: Color.fromARGB(255, 201, 199, 199),
    height: Sizes.dp59(context),
    //width: Sizes.dp40(context) + Sizes.dp14(context),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Filter:",
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: black,
              fontSize: Sizes.dp4(context),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: Sizes.dp2(context)),
        BlocBuilder<FilterTukarPoinTipe, String>(
          builder: (context, state) {
            return filter1OfTukarPoinPage(context, state);
          },
        ),
        BlocBuilder<FilterTukarPoinKategori, String>(
          builder: (context, state) {
            return filter2OfTukarPoinPageNonVoid(context, state);
          },
        ),
        BlocBuilder<FilterTukarPoinToko, String>(
          builder: (context, state) {
            return filter3OfTukarPoinPage(context, state);
          },
        ),
        SizedBox(height: Sizes.dp2(context)),
        BlocBuilder<FilterTukarPoinAble, String>(
          builder: (context, state) {
            return Container(
              //color: Colors.amber,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: Sizes.dp1(context)),
              width: Sizes.dp48(context) + Sizes.dp14(context),
              child: InkWell(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                onTap: () {
                  BlocProvider.of<FilterTukarPoinButton>(context).add("Cari");
                  BlocProvider.of<FilterTukarPoinName>(context).add("Cari");
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: orange,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(Sizes.dp1(context)),
                  ),
                  height: Sizes.dp10(context),
                  width: Sizes.dp40(context),
                  child: Text(
                    "Cari",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(color: black),
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: Sizes.dp2(context)),
        Container(
          //color: Colors.amber,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: Sizes.dp1(context)),
          width: Sizes.dp48(context) + Sizes.dp14(context),
          child: InkWell(
            borderRadius: BorderRadius.circular(Sizes.dp2(context)),
            onTap: () {
              Application.router.navigateTo(context, "/tukarpoin");
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: lightGrey,
                border: Border.all(),
                borderRadius: BorderRadius.circular(Sizes.dp1(context)),
              ),
              height: Sizes.dp10(context),
              width: Sizes.dp40(context),
              child: Text(
                "Reset",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: black),
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
