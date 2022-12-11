import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tukarPoinContent2(BuildContext context) {
  return Row(
    children: [
      Row(
        children: [
          Row(
            children: [
              BlocBuilder<FilterTukarPoinResultLength, int>(
                builder: (context, state) {
                  if (state == -1) {
                    return SizedBox.shrink();
                  } else {
                    return Text(
                      state.toString() + " ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: lightGrey,
                          fontSize: Sizes.dp4(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  }
                },
              ),
              Text(
                "Hasil",
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: lightGrey,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: Sizes.dp49(context) + Sizes.dp6(context)),
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
          BlocBuilder<FilterTukarPoinPenilaian, String>(
            builder: (context, state) {
              return filterPenilaianButton(context, state);
            },
          ),
          SizedBox(width: Sizes.dp2(context)),
          BlocBuilder<FilterTukarPoinMasaBerlaku, String>(
            builder: (context, state) {
              return filterMasaBerlakuButton(context, state);
            },
          ),
        ],
      ),
    ],
  );
}

Widget filterPenilaianButton(BuildContext context, String penilaian) {
  return InkWell(
    onTap: () {
      if (penilaian == "worst") {
        penilaian = "best";
      } else {
        penilaian = "worst";
      }
      BlocProvider.of<FilterTukarPoinPenilaian>(context).add(penilaian);
      BlocProvider.of<FilterTukarPoinName>(context).add("Penilaian");
    },
    child: Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: penilaian == "null" ? lightGrey : black),
        borderRadius: BorderRadius.circular(Sizes.dp1(context)),
      ),
      height: Sizes.dp8(context),
      width: Sizes.dp25(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Penilaian",
            style: GoogleFonts.inter(
              textStyle: TextStyle(color: black),
              fontSize: Sizes.dp3(context),
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(
            penilaian == "worst" ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            size: Sizes.dp6(context),
            color: black,
          ),
        ],
      ),
    ),
  );
}

Widget filterMasaBerlakuButton(BuildContext context, String masaBerlaku) {
  return InkWell(
    onTap: () {
      if (masaBerlaku == "farthest") {
        masaBerlaku = "latest";
      } else {
        masaBerlaku = "farthest";
      }
      BlocProvider.of<FilterTukarPoinMasaBerlaku>(context).add(masaBerlaku);
      BlocProvider.of<FilterTukarPoinName>(context).add("Masa Berlaku");
    },
    child: Container(
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: masaBerlaku == "null" ? lightGrey : black),
        borderRadius: BorderRadius.circular(Sizes.dp1(context)),
      ),
      height: Sizes.dp8(context),
      width: Sizes.dp28(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Masa Berlaku",
            style: GoogleFonts.inter(
              textStyle: TextStyle(color: black),
              fontSize: Sizes.dp3(context),
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(
            masaBerlaku == "farthest"
                ? Icons.arrow_drop_up
                : Icons.arrow_drop_down,
            size: Sizes.dp6(context),
            color: black,
          ),
        ],
      ),
    ),
  );
}
