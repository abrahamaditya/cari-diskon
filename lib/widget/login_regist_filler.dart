import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class loginRegistFiller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mint,
      height: Sizes.dp59(context) + Sizes.dp30(context),
      width: Sizes.dp60(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: Sizes.dp30(context)),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/icon_check.png',
                  width: Sizes.dp10(context),
                ),
                SizedBox(width: Sizes.dp3(context)),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Dapatkan diskon dan kode promo terbaik',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp5(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'setiap minggu!',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp5(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          SizedBox(height: Sizes.dp10(context)),
          Container(
            margin: EdgeInsets.only(left: Sizes.dp30(context)),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/icon_thumbs.png',
                  width: Sizes.dp10(context),
                ),
                SizedBox(width: Sizes.dp3(context)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dapatkan rekomendasi diskon dan kode',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: black,
                          fontSize: Sizes.dp5(context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      'promo khusus untuk anda',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: black,
                          fontSize: Sizes.dp5(context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: Sizes.dp10(context)),
          Container(
            margin: EdgeInsets.only(left: Sizes.dp30(context)),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/icon_star.png',
                  width: Sizes.dp10(context),
                ),
                SizedBox(width: Sizes.dp3(context)),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Kumpulkan poin untuk ditukar dengan diskon',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp5(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'dan kode promo menarik!',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp5(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
