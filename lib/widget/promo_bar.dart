import 'dart:async';

import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

Widget promoBar(BuildContext context) {
  return Container(
    color: orange,
    height: Sizes.dp12(context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Potongan 30% untuk Pelanggan Baru di Traveloka!",
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: black,
              fontSize: Sizes.dp3(context),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(width: Sizes.dp4(context)),
        Container(
          alignment: Alignment.center,
          color: paleOrange,
          height: Sizes.dp8(context),
          width: Sizes.dp40(context) + Sizes.dp4(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kode: NEWUSER321",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp3(context),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: Sizes.dp1(context)),
              Icon(
                Icons.copy,
                size: Sizes.dp4(context),
                color: black,
              ),
              SizedBox(width: Sizes.dp1(context)),
              InkWell(
                onTap: () {
                  FlutterClipboard.copy("NEWUSER321").then(
                    (value) => print("Copy Successful"),
                    // Dialogs.materialDialog(
                    //           color: Colors.white,
                    //           title: 'Copied!',
                    //           titleStyle: GoogleFonts.inter(
                    //             textStyle: TextStyle(
                    //               color: black,
                    //               fontSize: Sizes.dp5(context),
                    //               fontWeight: FontWeight.w500,
                    //             ),
                    //           ),
                    //           lottieBuilder: Lottie.asset(
                    //             './animation/successful-tick.json',
                    //             fit: BoxFit.contain,
                    //             height: Sizes.dp1(context),
                    //             width: Sizes.dp1(context),
                    //           ),
                    //           dialogWidth: kIsWeb ? 0.1 : null,
                    //           context: context,
                    //           actions: [
                    //             IconsButton(
                    //               onPressed: () {
                    //                 Navigator.of(context).pop();
                    //               },
                    //               text: 'Claim',
                    //               iconData: Icons.done,
                    //               color: Colors.blue,
                    //               textStyle: TextStyle(color: Colors.white),
                    //               iconColor: Colors.white,
                    //             ),
                    //           ],
                    //         ),
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       content: Text(
                    //         "Copied!",
                    //         textAlign: TextAlign.start,
                    //         style: GoogleFonts.inter(
                    //           textStyle: TextStyle(
                    //             color: black,
                    //             fontSize: Sizes.dp7(context),
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ),
                    //       actions: [
                    //         TextButton(
                    //           onPressed: () {
                    //             Navigator.pop(context);
                    //           },
                    //           child: Text(
                    //             "Close",
                    //             textAlign: TextAlign.start,
                    //             style: GoogleFonts.inter(
                    //               textStyle: TextStyle(
                    //                 color: black,
                    //                 fontSize: Sizes.dp4(context),
                    //                 fontWeight: FontWeight.w500,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // ),
                  );
                },
                child: Text(
                  "Salin kode",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp3(context),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
