import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/BLoC/rating_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/text_comment_field_comment.dart';
import 'package:caridiskon/widget/text_name_field_comment.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';

Widget promoBar(BuildContext context) {
  const String GUID = "d2a1d78d-042d-4f17-aa13-35c623260b59";
  String? inisial = "null";
  String? komen = "null";
  final formKey = GlobalKey<FormState>();
  return Container(
    color: orange,
    height: Sizes.dp12(context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // BlocProvider(
        //   create: (context) => InitialSaved(),
        //   child: BlocListener<InitialSaved, String>(
        //     listener: (context, state) {
        //       inisial = state;
        //     },
        //     child: SizedBox.shrink(),
        //   ),
        // ),
        // BlocProvider(
        //   create: (context) => InitialValidator(),
        //   child: BlocListener<CommentSaved, String>(
        //     listener: (context, state) {
        //       komen = state;
        //     },
        //     child: SizedBox.shrink(),
        //   ),
        // ),
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
                  if (LoginStatus != false) {
                    if (accountAuthorized!.promoTaken.contains(GUID) == true) {
                      Dialogs.materialDialog(
                        color: Colors.white,
                        title: 'Promo sudah kamu pakai',
                        titleStyle: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp5(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        lottieBuilder: Lottie.asset(
                          './animation/alert.json',
                          frameRate: FrameRate(60),
                          fit: BoxFit.contain,
                        ),
                        dialogWidth: kIsWeb ? 0.1 : null,
                        context: context,
                      );
                    } else {
                      accountAuthorized!.promoTaken.add(GUID);
                      accountAuthorized!.poin =
                          (int.parse(accountAuthorized!.poin) + 10).toString();
                      FlutterClipboard.copy("NEWUSER321").then(
                        (value) => print("Copy Successful"),
                      );
                      Dialogs.materialDialog(
                        color: Colors.white,
                        customView: Container(
                          padding: EdgeInsets.all(Sizes.dp8(context)),
                          child: Form(
                            key: formKey,
                            child: Column(
                              children: [
                                Text(
                                  "Selamat menikmati promomu! Yuk, bantu pengguna lain dengan memberikan dan komentar untuk penawaran ini, ya.",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp5(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: Sizes.dp6(context)),
                                BlocProvider(
                                  create: (context) => RatingInput(),
                                  child: BlocBuilder<RatingInput, double>(
                                    builder: (context, state) {
                                      return RatingBar.builder(
                                        initialRating: state,
                                        glowColor: white,
                                        minRating: 0.00,
                                        allowHalfRating: true,
                                        unratedColor: Colors.grey.withAlpha(50),
                                        itemCount: 5,
                                        itemSize: Sizes.dp16(context),
                                        // itemPadding: EdgeInsets.symmetric(
                                        //     horizontal: Sizes.dp2(context)),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: orange,
                                        ),
                                        onRatingUpdate: (rating) {
                                          BlocProvider.of<RatingInput>(context)
                                              .add(rating);
                                        },
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: Sizes.dp2(context)),
                                InputNameFieldComment(placeholder: "Inisialmu"),
                                SizedBox(height: Sizes.dp2(context)),
                                InputCommentFieldComment(
                                    placeholder: "Isi komentarmu disini"),
                                SizedBox(height: Sizes.dp2(context)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Dapatkan 10 poin!",
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: black,
                                          fontSize: Sizes.dp4(context),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Sizes.dp2(context)),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: green,
                                          borderRadius: BorderRadius.circular(
                                              Sizes.dp1(context)),
                                        ),
                                        height: Sizes.dp9(context),
                                        width: Sizes.dp18(context),
                                        child: Text(
                                          "Send",
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(color: white),
                                            fontSize: Sizes.dp4(context),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        dialogWidth: kIsWeb ? 0.3 : null,
                        context: context,
                      );
                    }
                  } else {
                    Application.router.navigateTo(
                      context,
                      "/login",
                    );
                  }
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
