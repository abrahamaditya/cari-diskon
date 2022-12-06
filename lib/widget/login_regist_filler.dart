import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class loginRegistFiller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mint,
      width: Sizes.dp60(context),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.dp20(context),
        vertical: Sizes.dp30(context)
      ),
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(bottom: Sizes.dp10(context)),
          child: Row(
            children: [
              Image.asset('./icons/icon_check.png'),
              Text(
                '  Dapatkan diskon dan kode promo terbaik setiap minggu!',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp2(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: Sizes.dp10(context)),
          child: Row(
            children: [
              Image.asset('./icons/icon_thumbs.png'),
              Text(
                '  Dapatkan rekomendasi diskon dan kode promo khusus untuk anda',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp2(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Image.asset('./icons/icon_star.png'),
            Text(
              '  Kumpulkan poin untuk ditukar dengan diskon dan kode promo menarik!',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp2(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
