import 'package:caridiskon/BLoC/semua_penawaran_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_plus/dropdown_plus.dart';

Widget filter1OfTokoPage(BuildContext context, String state) {
  return Card(
    color: white,
    elevation: 1,
    clipBehavior: Clip.antiAlias,
    child: InkWell(
      onTap: () {},
      child: SizedBox(
        child: Container(
          //height: Sizes.dp20(context) - Sizes.dp1(context),
          width: Sizes.dp40(context),
          padding: EdgeInsets.only(
            left: Sizes.dp6(context),
            right: Sizes.dp3(context),
            bottom: Sizes.dp1(context),
          ),
          child: Column(
            children: [
              SizedBox(height: Sizes.dp1(context)),
              TextDropdownFormField(
                onChanged: ((dynamic item) {
                  BlocProvider.of<FilterAllTipe>(context).add(item);
                  BlocProvider.of<FilterAllButton>(context).add(item);
                }),
                dropdownHeight: Sizes.dp28(context),
                options: ["Diskon", "Kode"],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: Sizes.dp2(context)),
                  constraints: BoxConstraints(
                    maxHeight: Sizes.dp22(context),
                    maxWidth: Sizes.dp40(context),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                  // fillColor: red,
                  // focusColor: red,
                  // hoverColor: red,
                  labelStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  floatingLabelStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  helperStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  hintStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  errorStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: red,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  prefixStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  suffixStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  counterStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: Sizes.dp5(context),
                    color: black,
                  ),
                  iconColor: black,
                  label: Text(
                    "Tipe",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget filter2OfTokoPage(BuildContext context, String state) {
  return Card(
    color: white,
    elevation: 1,
    clipBehavior: Clip.antiAlias,
    child: InkWell(
      onTap: () {},
      child: SizedBox(
        child: Container(
          // height: Sizes.dp20(context) - Sizes.dp1(context),
          width: Sizes.dp40(context),
          padding: EdgeInsets.only(
            left: Sizes.dp6(context),
            right: Sizes.dp3(context),
            bottom: Sizes.dp1(context),
          ),
          child: Column(
            children: [
              SizedBox(height: Sizes.dp1(context)),
              TextDropdownFormField(
                onChanged: ((dynamic item) {
                  BlocProvider.of<FilterAllKategori>(context).add(item);
                  BlocProvider.of<FilterAllButton>(context).add(item);
                }),
                dropdownHeight: Sizes.dp50(context),
                options: [
                  "Elektronik",
                  "Fashion",
                  "Kesehatan",
                  "Makanan & Minuman",
                  "Olahraga",
                  "Perawatan Tubuh",
                  "Transportasi",
                  "Lainnya",
                ],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: Sizes.dp2(context)),
                  constraints: BoxConstraints(
                    maxHeight: Sizes.dp22(context),
                    maxWidth: Sizes.dp40(context),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                  // fillColor: red,
                  // focusColor: red,
                  // hoverColor: red,
                  labelStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  floatingLabelStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  helperStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  hintStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  errorStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: red,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  prefixStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  suffixStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  counterStyle: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: Sizes.dp5(context),
                    color: black,
                  ),
                  iconColor: black,
                  label: Text(
                    "Kategori",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void filter3OfTokoPage(BuildContext context, String state, String name) {
  BlocProvider.of<FilterAllToko>(context).add(name);
  BlocProvider.of<FilterAllButton>(context).add(name);
  BlocProvider.of<FilterAllButton>(context).add("Cari");
  BlocProvider.of<FilterAllName>(context).add("Cari");
}
