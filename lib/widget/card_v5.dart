import 'package:caridiskon/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardV5(BuildContext context, String path) {
  return SizedBox(
    width: Sizes.dp50(context) + Sizes.dp5(context),
    //height: Sizes.dp36(context),
    child: Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        side: BorderSide(
          color: grey,
        ),
      ),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        onTap: () {},
        child: Container(
          //padding: EdgeInsets.all(Sizes.dp2(context)),
          height: Sizes.dp12(context),
          width: Sizes.dp40(context),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(Sizes.dp2(context)),
                height: Sizes.dp40(context),
                width: Sizes.dp40(context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("./image/image2.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Diskon 5% Shopee",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: white,
                          fontSize: Sizes.dp5(context),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    //SizedBox(height: Sizes.dp1(context)),
                    Text(
                      "For whole order",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: white,
                          fontSize: Sizes.dp3(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: Sizes.dp1(context)),
                    Text(
                      "• 20/04/2022 00:00 – 27/04/2022 00:00",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: white,
                          fontSize: Sizes.dp2(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "• For all products",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: white,
                          fontSize: Sizes.dp2(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "• Minimal pembelian Rp100.000,00",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: white,
                          fontSize: Sizes.dp2(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(width: Sizes.dp1(context)),
              Container(
                padding: EdgeInsets.all(Sizes.dp2(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: green,
                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(Sizes.dp1(context)),
                      ),
                      height: Sizes.dp8(context),
                      width: Sizes.dp25(context),
                      child: Text(
                        "DISKON",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(color: white),
                          fontSize: Sizes.dp2(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: Sizes.dp12(context)),
                    Image.asset(
                      path,
                      scale: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
