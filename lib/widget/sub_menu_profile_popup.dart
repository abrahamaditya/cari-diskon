import 'dart:convert';
import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

Widget profileMenu(BuildContext context, double x, double y) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Sizes.dp2(context),
      ),
    ),
    elevation: 3,
    backgroundColor: white,

    // POSITIONING 1 (with inset padding)
    // note: uncomment line 22-27
    // insetPadding: EdgeInsets.only(
    //   top: Sizes.dp8(context),
    //   bottom: Sizes.dp50(context) + Sizes.dp10(context),
    //   left: Sizes.dp80(context) + Sizes.dp50(context) + Sizes.dp12(context),
    //   right: Sizes.dp12(context),
    // ),

    // POSITIONING 2 (with alignment)
    // note: uncomment line 31-41 & 208
    insetPadding: EdgeInsets.zero,
    alignment: Alignment(x, y),
    // Alignment second approach
    // alignment: Alignment(MediaQuery.of(context).size.width * 0.00072,
    //     -MediaQuery.of(context).size.height * 0.0011),
    child: ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: Sizes.dp40(context),
        maxWidth: Sizes.dp50(context),
      ),
      child: Padding(
        padding: EdgeInsets.all(Sizes.dp8(context)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                accountAuthorized!.name,
                maxLines: 1,
                // overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Text(
                accountAuthorized!.email,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp3(context),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: Sizes.dp5(context)),
              Divider(
                height: 0,
                thickness: 0.5,
                color: lightGrey,
              ),
              SizedBox(height: Sizes.dp5(context)),
              Row(
                children: [
                  Text(
                    "Sisa Poin : ",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    accountAuthorized!.poin,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.dp5(context)),
              Divider(
                height: 0,
                thickness: 0.5,
                color: lightGrey,
              ),
              SizedBox(height: Sizes.dp5(context)),
              Container(
                color: white,
                child: InkWell(
                  onTap: () {
                    LoginStatus = false;
                    //accountAuthorized = null;
                    html.window.location.reload();
                    //Application.router.navigateTo(context, "/");
                  },
                  child: Row(children: [
                    Icon(
                      Icons.logout_outlined,
                      color: red,
                      size: Sizes.dp5(context),
                    ),
                    SizedBox(width: Sizes.dp1(context)),
                    Container(
                      color: white,
                      child: Text(
                        "Keluar",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: red,
                            fontSize: Sizes.dp4(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
