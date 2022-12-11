import 'package:caridiskon/BLoC/semua_penawaran_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/filter_kategori_page.dart';
import 'package:caridiskon/widget/filter_top20_page.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Widget semuaPenawaranContent1(BuildContext context) {
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
        BlocBuilder<FilterAllTipe, String>(
          builder: (context, state) {
            return filter1OfKategoriPage(context, state);
          },
        ),
        BlocBuilder<FilterAllKategori, String>(
          builder: (context, state) {
            return filter2OfKategoriPageNonVoid(context, state);
          },
        ),
        BlocBuilder<FilterAllToko, String>(
          builder: (context, state) {
            return filter3OfKategoriPage(context, state);
          },
        ),
        SizedBox(height: Sizes.dp2(context)),
        BlocBuilder<FilterAllAble, String>(
          builder: (context, state) {
            return Container(
              //color: Colors.amber,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: Sizes.dp1(context)),
              width: Sizes.dp48(context) + Sizes.dp14(context),
              child: InkWell(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                onTap: () {
                  BlocProvider.of<FilterAllButton>(context).add("Cari");
                  BlocProvider.of<FilterAllName>(context).add("Cari");
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
              Application.router.navigateTo(context, "/semuapenawaran");
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
