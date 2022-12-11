import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/BLoC/rating_BLoC.dart';
import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/data/semua_penawaran.dart';
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
import 'dart:html' as html;

import 'package:material_dialogs/material_dialogs.dart';

Widget detailAllPenawaranContent2(BuildContext context, SemuaPenawaran data) {
  String? inisial = "null";
  String? komen = "null";
  final formKey = GlobalKey<FormState>();
  return Container(
    //color: Color.fromARGB(255, 201, 199, 199),
    //height: Sizes.dp59(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Sizes.dp1(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Sizes.dp2(context)),
              height: Sizes.dp48(context) + Sizes.dp16(context),
              width: Sizes.dp56(context) + Sizes.dp22(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                image: DecorationImage(
                  image: AssetImage(data.framedLogo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(Sizes.dp8(context)),
              height: Sizes.dp48(context) + Sizes.dp16(context),
              width: Sizes.dp56(context) + Sizes.dp22(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                image: DecorationImage(
                  image: AssetImage(data.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lihat penawaran menarik lain",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: white,
                        fontSize: Sizes.dp7(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "dari",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        " " + data.brand,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        " di",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        " CariDiskon",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        "!",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.dp4(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Sizes.dp56(context) + Sizes.dp22(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Syarat dan Ketentuan Promo:",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp6(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.dp1(context)),
                  Text(
                    "- " + data.description1,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "- " + data.description2,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "- " + data.description3,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Sizes.dp5(context)),
              height: data.type == "Diskon"
                  ? data.status == "Tukar Poin"
                      ? Sizes.dp30(context) + Sizes.dp6(context)
                      : Sizes.dp30(context) + Sizes.dp16(context)
                  : data.status == "Tukar Poin"
                      ? Sizes.dp30(context) + Sizes.dp12(context)
                      : Sizes.dp30(context) + Sizes.dp12(context),
              width: Sizes.dp56(context) + Sizes.dp22(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                border: Border.all(),
              ),
              child: data.type == "Diskon"
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        data.status == "Tukar Poin"
                            ? Text(
                                "Tukar poin sekarang untuk menikmati diskon!",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            : Text(
                                "Diskon ini tidak memiliki kode. Segera cek aplikasi atau website terkait untuk menikmati diskon!*",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                        SizedBox(height: Sizes.dp4(context)),
                        data.status == "Tukar Poin"
                            ? Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    if (LoginStatus != false) {
                                      if (int.parse(accountAuthorized!.poin) >=
                                              int.parse(data.poin) ==
                                          true) {
                                        accountAuthorized!.poin = (int.parse(
                                                    accountAuthorized!.poin) -
                                                int.parse(data.poin))
                                            .toString();
                                        BlocProvider.of<TukarPoinContainer>(
                                                context)
                                            .add("Enabled");
                                      } else {
                                        BlocProvider.of<TukarPoinContainer>(
                                                context)
                                            .add("Disabled");
                                        Dialogs.materialDialog(
                                          color: Colors.white,
                                          title: 'Poin kamu tidak cukup',
                                          titleStyle: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: black,
                                              fontSize: Sizes.dp5(context),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          lottieBuilder: Lottie.asset(
                                            'assets/animation/Insufficient-funds-2.json',
                                            frameRate: FrameRate(60),
                                            fit: BoxFit.contain,
                                          ),
                                          dialogWidth: kIsWeb ? 0.1 : null,
                                          context: context,
                                        );
                                      }
                                    } else {
                                      Application.router
                                          .navigateTo(context, "/login");
                                    }
                                  },
                                  child:
                                      BlocBuilder<TukarPoinContainer, String>(
                                    builder: (context, state) {
                                      if (state == "Disabled" ||
                                          state == "null") {
                                        return Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: green,
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(
                                                Sizes.dp1(context)),
                                          ),
                                          height: Sizes.dp14(context),
                                          width: Sizes.dp40(context) +
                                              Sizes.dp8(context),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Tukar " +
                                                    data.poin +
                                                    " poin sekarang!",
                                                style: GoogleFonts.inter(
                                                  textStyle:
                                                      TextStyle(color: white),
                                                  fontSize: Sizes.dp5(context),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return InkWell(
                                          onTap: () {
                                            //Application.router.navigateTo(context, "/test");
                                            html.window
                                                .open(data.website, "Website");
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: white,
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Sizes.dp1(context)),
                                            ),
                                            height: Sizes.dp12(context),
                                            width: Sizes.dp30(context),
                                            child: Text(
                                              "Cek Sekarang",
                                              style: GoogleFonts.inter(
                                                textStyle:
                                                    TextStyle(color: green),
                                                fontSize: Sizes.dp4(context),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              )
                            : Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    //Application.router.navigateTo(context, "/test");
                                    html.window.open(data.website, "Website");
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: white,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(
                                          Sizes.dp1(context)),
                                    ),
                                    height: Sizes.dp12(context),
                                    width: Sizes.dp30(context),
                                    child: Text(
                                      "Cek Sekarang",
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(color: green),
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(height: Sizes.dp4(context)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "*Syarat dan Ketentuan berlaku",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  // KODE
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        data.status == "Tukar Poin"
                            ? Text(
                                "Tukar poin sekarang untuk mendapatkan kode promo!",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            : Text(
                                "Gunakan kode berikut untuk mendapatkan promo*",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                        data.status == "Tukar Poin"
                            ? Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    if (LoginStatus != false) {
                                      if (int.parse(accountAuthorized!.poin) >=
                                          int.parse(data.poin)) {
                                        BlocProvider.of<TukarPoinContainer>(
                                                context)
                                            .add("Enabled");
                                      } else {
                                        BlocProvider.of<TukarPoinContainer>(
                                                context)
                                            .add("Disabled");
                                        Dialogs.materialDialog(
                                          color: Colors.white,
                                          title: 'Poin kamu tidak cukup',
                                          titleStyle: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: black,
                                              fontSize: Sizes.dp5(context),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          lottieBuilder: Lottie.asset(
                                            'assets/animation/Insufficient-funds.json',
                                            frameRate: FrameRate(60),
                                            fit: BoxFit.contain,
                                          ),
                                          dialogWidth: kIsWeb ? 0.1 : null,
                                          context: context,
                                        );
                                      }
                                    } else {
                                      Application.router
                                          .navigateTo(context, "/login");
                                    }
                                  },
                                  child:
                                      BlocBuilder<TukarPoinContainer, String>(
                                    builder: (context, state) {
                                      if (state == "Disabled" ||
                                          state == "null") {
                                        return Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: green,
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(
                                                Sizes.dp1(context)),
                                          ),
                                          height: Sizes.dp14(context),
                                          width: Sizes.dp40(context) +
                                              Sizes.dp8(context),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Tukar " +
                                                    data.poin +
                                                    " poin sekarang!",
                                                style: GoogleFonts.inter(
                                                  textStyle:
                                                      TextStyle(color: white),
                                                  fontSize: Sizes.dp5(context),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: white,
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(
                                                Sizes.dp1(context)),
                                          ),
                                          height: Sizes.dp14(context),
                                          width: Sizes.dp40(context),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                data.code,
                                                style: GoogleFonts.inter(
                                                  textStyle:
                                                      TextStyle(color: black),
                                                  fontSize: Sizes.dp5(context),
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Sizes.dp8(context)),
                                              Text(
                                                "|",
                                                style: GoogleFonts.inter(
                                                  textStyle: TextStyle(
                                                      color: lightGrey),
                                                  fontSize: Sizes.dp4(context),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Sizes.dp4(context)),
                                              InkWell(
                                                onTap: () {
                                                  if (LoginStatus != false) {
                                                    if (accountAuthorized!
                                                            .promoTaken
                                                            .contains(
                                                                data.GUID) ==
                                                        true) {
                                                      Dialogs.materialDialog(
                                                        color: Colors.white,
                                                        title:
                                                            'Promo sudah kamu pakai',
                                                        titleStyle:
                                                            GoogleFonts.inter(
                                                          textStyle: TextStyle(
                                                            color: black,
                                                            fontSize: Sizes.dp5(
                                                                context),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        lottieBuilder:
                                                            Lottie.asset(
                                                          'assets/animation/alert.json',
                                                          frameRate:
                                                              FrameRate(60),
                                                          fit: BoxFit.contain,
                                                          // height: Sizes.dp1(context),
                                                          // width: Sizes.dp1(context),
                                                        ),
                                                        dialogWidth:
                                                            kIsWeb ? 0.1 : null,
                                                        context: context,
                                                      );
                                                    } else {
                                                      accountAuthorized!
                                                          .promoTaken
                                                          .add(data.GUID);
                                                      accountAuthorized!
                                                          .poin = (int.parse(
                                                                  accountAuthorized!
                                                                      .poin) -
                                                              int.parse(
                                                                  data.poin))
                                                          .toString();
                                                      FlutterClipboard.copy(
                                                              data.code)
                                                          .then(
                                                        (value) => print(
                                                            "Copy Successful"),
                                                      );
                                                      Dialogs.materialDialog(
                                                        color: Colors.white,
                                                        customView: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  Sizes.dp8(
                                                                      context)),
                                                          child: Form(
                                                            key: formKey,
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Selamat menikmati promomu! Yuk, bantu pengguna lain dengan memberikan dan komentar untuk penawaran ini, ya.",
                                                                  style:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    textStyle:
                                                                        TextStyle(
                                                                      color:
                                                                          black,
                                                                      fontSize:
                                                                          Sizes.dp5(
                                                                              context),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    height: Sizes
                                                                        .dp6(
                                                                            context)),
                                                                BlocProvider(
                                                                  create: (context) =>
                                                                      RatingInput(),
                                                                  child: BlocBuilder<
                                                                      RatingInput,
                                                                      double>(
                                                                    builder:
                                                                        (context,
                                                                            state) {
                                                                      return RatingBar
                                                                          .builder(
                                                                        initialRating:
                                                                            state,
                                                                        glowColor:
                                                                            white,
                                                                        minRating:
                                                                            0.00,
                                                                        allowHalfRating:
                                                                            true,
                                                                        unratedColor: Colors
                                                                            .grey
                                                                            .withAlpha(50),
                                                                        itemCount:
                                                                            5,
                                                                        itemSize:
                                                                            Sizes.dp16(context),
                                                                        // itemPadding: EdgeInsets.symmetric(
                                                                        //     horizontal: Sizes.dp2(context)),
                                                                        itemBuilder:
                                                                            (context, _) =>
                                                                                Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              orange,
                                                                        ),
                                                                        onRatingUpdate:
                                                                            (rating) {
                                                                          BlocProvider.of<RatingInput>(context)
                                                                              .add(rating);
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    height: Sizes
                                                                        .dp2(
                                                                            context)),
                                                                InputNameFieldComment(
                                                                    placeholder:
                                                                        "Inisialmu"),
                                                                SizedBox(
                                                                    height: Sizes
                                                                        .dp2(
                                                                            context)),
                                                                InputCommentFieldComment(
                                                                    placeholder:
                                                                        "Isi komentarmu disini"),
                                                                SizedBox(
                                                                    height: Sizes
                                                                        .dp2(
                                                                            context)),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Text(
                                                                      "Dapatkan " +
                                                                          data.reward +
                                                                          " poin!",
                                                                      style: GoogleFonts
                                                                          .inter(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          color:
                                                                              black,
                                                                          fontSize:
                                                                              Sizes.dp4(context),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                        width: Sizes.dp2(
                                                                            context)),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              green,
                                                                          borderRadius:
                                                                              BorderRadius.circular(Sizes.dp1(context)),
                                                                        ),
                                                                        height:
                                                                            Sizes.dp9(context),
                                                                        width: Sizes.dp18(
                                                                            context),
                                                                        child:
                                                                            Text(
                                                                          "Send",
                                                                          style:
                                                                              GoogleFonts.inter(
                                                                            textStyle:
                                                                                TextStyle(color: white),
                                                                            fontSize:
                                                                                Sizes.dp4(context),
                                                                            fontWeight:
                                                                                FontWeight.w600,
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
                                                        dialogWidth:
                                                            kIsWeb ? 0.3 : null,
                                                        context: context,
                                                      );
                                                    }
                                                  } else {
                                                    Application.router
                                                        .navigateTo(
                                                            context, "/login");
                                                  }
                                                },
                                                child: Text(
                                                  "Salin",
                                                  style: GoogleFonts.inter(
                                                    textStyle:
                                                        TextStyle(color: green),
                                                    fontSize:
                                                        Sizes.dp4(context),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              )
                            : Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    if (LoginStatus != false) {
                                      if (int.parse(accountAuthorized!.poin) >=
                                              int.parse(data.poin) ==
                                          true) {
                                        BlocProvider.of<TukarPoinContainer>(
                                                context)
                                            .add("Enabled");
                                      } else {
                                        BlocProvider.of<TukarPoinContainer>(
                                                context)
                                            .add("Disabled");
                                        Dialogs.materialDialog(
                                          color: Colors.white,
                                          title: 'Poin kamu tidak cukup',
                                          titleStyle: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: black,
                                              fontSize: Sizes.dp5(context),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          lottieBuilder: Lottie.asset(
                                            'assets/animation/Insufficient-funds-2.json',
                                            frameRate: FrameRate(60),
                                            fit: BoxFit.contain,
                                          ),
                                          dialogWidth: kIsWeb ? 0.1 : null,
                                          context: context,
                                        );
                                      }
                                    } else {
                                      Application.router
                                          .navigateTo(context, "/login");
                                    }
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: white,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(
                                          Sizes.dp1(context)),
                                    ),
                                    height: Sizes.dp14(context),
                                    width: Sizes.dp40(context),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data.code,
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(color: black),
                                            fontSize: Sizes.dp5(context),
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        SizedBox(width: Sizes.dp8(context)),
                                        Text(
                                          "|",
                                          style: GoogleFonts.inter(
                                            textStyle:
                                                TextStyle(color: lightGrey),
                                            fontSize: Sizes.dp4(context),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(width: Sizes.dp4(context)),
                                        InkWell(
                                          onTap: () {
                                            if (LoginStatus != false) {
                                              if (accountAuthorized!.promoTaken
                                                      .contains(data.GUID) ==
                                                  true) {
                                                Dialogs.materialDialog(
                                                  color: Colors.white,
                                                  title:
                                                      'Promo sudah kamu pakai',
                                                  titleStyle: GoogleFonts.inter(
                                                    textStyle: TextStyle(
                                                      color: black,
                                                      fontSize:
                                                          Sizes.dp5(context),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  lottieBuilder: Lottie.asset(
                                                    'assets/animation/alert.json',
                                                    frameRate: FrameRate(60),
                                                    fit: BoxFit.contain,
                                                    // height: Sizes.dp1(context),
                                                    // width: Sizes.dp1(context),
                                                  ),
                                                  dialogWidth:
                                                      kIsWeb ? 0.1 : null,
                                                  context: context,
                                                );
                                              } else {
                                                accountAuthorized!
                                                    .poin = (int.parse(
                                                            accountAuthorized!
                                                                .poin) +
                                                        int.parse(data.reward))
                                                    .toString();
                                                accountAuthorized!.promoTaken
                                                    .add(data.GUID);
                                                FlutterClipboard.copy(data.code)
                                                    .then(
                                                  (value) =>
                                                      print("Copy Successful"),
                                                );
                                                Dialogs.materialDialog(
                                                  color: Colors.white,
                                                  customView: Container(
                                                    padding: EdgeInsets.all(
                                                        Sizes.dp8(context)),
                                                    child: Form(
                                                      key: formKey,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            "Selamat menikmati promomu! Yuk, bantu pengguna lain dengan memberikan dan komentar untuk penawaran ini, ya.",
                                                            style: GoogleFonts
                                                                .inter(
                                                              textStyle:
                                                                  TextStyle(
                                                                color: black,
                                                                fontSize:
                                                                    Sizes.dp5(
                                                                        context),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: Sizes.dp6(
                                                                  context)),
                                                          BlocProvider(
                                                            create: (context) =>
                                                                RatingInput(),
                                                            child: BlocBuilder<
                                                                RatingInput,
                                                                double>(
                                                              builder: (context,
                                                                  state) {
                                                                return RatingBar
                                                                    .builder(
                                                                  initialRating:
                                                                      state,
                                                                  glowColor:
                                                                      white,
                                                                  minRating:
                                                                      0.00,
                                                                  allowHalfRating:
                                                                      true,
                                                                  unratedColor: Colors
                                                                      .grey
                                                                      .withAlpha(
                                                                          50),
                                                                  itemCount: 5,
                                                                  itemSize:
                                                                      Sizes.dp16(
                                                                          context),
                                                                  // itemPadding: EdgeInsets.symmetric(
                                                                  //     horizontal: Sizes.dp2(context)),
                                                                  itemBuilder:
                                                                      (context,
                                                                              _) =>
                                                                          Icon(
                                                                    Icons.star,
                                                                    color:
                                                                        orange,
                                                                  ),
                                                                  onRatingUpdate:
                                                                      (rating) {
                                                                    BlocProvider.of<RatingInput>(
                                                                            context)
                                                                        .add(
                                                                            rating);
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: Sizes.dp2(
                                                                  context)),
                                                          InputNameFieldComment(
                                                              placeholder:
                                                                  "Inisialmu"),
                                                          SizedBox(
                                                              height: Sizes.dp2(
                                                                  context)),
                                                          InputCommentFieldComment(
                                                              placeholder:
                                                                  "Isi komentarmu disini"),
                                                          SizedBox(
                                                              height: Sizes.dp2(
                                                                  context)),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                "Dapatkan " +
                                                                    data.reward +
                                                                    " poin!",
                                                                style:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  textStyle:
                                                                      TextStyle(
                                                                    color:
                                                                        black,
                                                                    fontSize:
                                                                        Sizes.dp4(
                                                                            context),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: Sizes.dp2(
                                                                      context)),
                                                              InkWell(
                                                                onTap: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color:
                                                                        green,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            Sizes.dp1(context)),
                                                                  ),
                                                                  height:
                                                                      Sizes.dp9(
                                                                          context),
                                                                  width: Sizes
                                                                      .dp18(
                                                                          context),
                                                                  child: Text(
                                                                    "Send",
                                                                    style: GoogleFonts
                                                                        .inter(
                                                                      textStyle:
                                                                          TextStyle(
                                                                              color: white),
                                                                      fontSize:
                                                                          Sizes.dp4(
                                                                              context),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
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
                                                  dialogWidth:
                                                      kIsWeb ? 0.3 : null,
                                                  context: context,
                                                );
                                              }
                                            } else {
                                              Application.router.navigateTo(
                                                  context, "/login");
                                            }
                                          },
                                          child: Text(
                                            "Salin",
                                            style: GoogleFonts.inter(
                                              textStyle:
                                                  TextStyle(color: green),
                                              fontSize: Sizes.dp4(context),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(height: Sizes.dp4(context)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "*Syarat dan Ketentuan berlaku",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
        SizedBox(height: Sizes.dp6(context)),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    "Untuk syarat dan ketentuan selengkapnya silakan kunjungi website atau aplikasi ",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextSpan(
                text: data.brand,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text:
                    ". Website CariDiskon tidak bertanggungjawab terhadap perubahan ataupun kesalahan yang disebabkan oleh kelalaian Toko ataupun Pengguna.",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w500,
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
