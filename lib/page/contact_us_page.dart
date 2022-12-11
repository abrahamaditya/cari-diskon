import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/search_bar_article.dart';
import 'package:caridiskon/widget/text_email_field_contact_us.dart';
import 'package:caridiskon/widget/text_message_field_contact_us.dart';
import 'package:caridiskon/widget/text_name_field_contact_us.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:toggle_list/toggle_list.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => NamaSaved()),
          BlocProvider(create: (_) => EmailSaved()),
          BlocProvider(create: (_) => PesanSaved()),
          BlocProvider(create: (_) => NameValidator()),
          BlocProvider(create: (_) => EmailValidator()),
          BlocProvider(create: (_) => PesanValidator()),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: FooterView(
            flex: 10,
            footer: Footer(
              child: FooterWidget(),
              padding: EdgeInsets.zero,
            ),
            children: [
              contactUsPageView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactUsPageView(BuildContext context) {
    String? name = "null";
    String? email = "null";
    String? message = "null";
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocListener<NamaSaved, String>(
            listener: (context, state) {
              name = state;
            },
            child: SizedBox.shrink(),
          ),
          BlocListener<EmailSaved, String>(
            listener: (context, state) {
              email = state;
            },
            child: SizedBox.shrink(),
          ),
          BlocListener<PesanSaved, String>(
            listener: (context, state) {
              message = state;
            },
            child: SizedBox.shrink(),
          ),
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          Container(
            height: Sizes.dp58(context) + Sizes.dp50(context),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.dp36(context) + Sizes.dp8(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Contact Us",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp7(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: Sizes.dp8(context)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Customer Service",
                //       textAlign: TextAlign.start,
                //       style: GoogleFonts.inter(
                //         textStyle: TextStyle(
                //           color: lightGrey,
                //           fontSize: Sizes.dp5(context),
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: Sizes.dp50(context)),
                //     Text(
                //       "Partnership",
                //       textAlign: TextAlign.start,
                //       style: GoogleFonts.inter(
                //         textStyle: TextStyle(
                //           color: lightGrey,
                //           fontSize: Sizes.dp5(context),
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(height: Sizes.dp6(context)),
                // Divider(
                //   height: 0,
                //   thickness: 0.7,
                //   color: black,
                // ),
                SizedBox(height: Sizes.dp14(context)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bagaimana kami bisa membantumu?",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: blue,
                              fontSize: Sizes.dp4(context),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: Sizes.dp1(context)),
                        SearchbarArticle(),
                        SizedBox(height: Sizes.dp8(context)),
                        Text(
                          "FAQ",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp4(context),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: Sizes.dp1(context)),
                        Container(
                          color: whiteDefault,
                          height: Sizes.dp56(context),
                          width: Sizes.dp56(context) + Sizes.dp8(context),
                          child: ToggleList(
                            scrollDuration: const Duration(milliseconds: 50),
                            innerPadding: const EdgeInsets.all(0),
                            // divider: const SizedBox(height: 0),
                            divider: Divider(
                              height: Sizes.dp3(context),
                              thickness: 0.7,
                              color: grey,
                            ),
                            children: [
                              ToggleListItem(
                                title: Text(
                                  "Bagaimana cara menggunakan kode / penawaran?",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "Silakan memilih penawaran yang diinginkan kemudian salin kode atau penawaran kemudian tempel kode atau penawaran tersebut ke aplikasi mitra yang sesuai.",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "Apa yang harus saya lakukan jika kode tidak berfungsi?",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "Silakan mengisi form disamping untuk memberikan feedback kode mana yang tidak berfungsi.",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "Bagaimana cara mencari kode yang saya inginkan?",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "Anda bisa menggunakan kolom pencarian atau anda bisa langsung ke halaman penawaran untuk mencari kode yang diinginkan.",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "Cara mengetahui detail kode / penawaran?",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "Anda bisa melihat tipe penawaran tersebut jika bertuliskan kode maka penawaran tersebut bertipe kode, sedangkan jika bertuliskan diskon maka penawaran tersebut bertipe penawaran tanpa kode.",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "Bagaimana cara mengetahui masa berlaku voucher?",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "Anda dapat melihat disisi atas kartu penawaran, disana terdapat detail mengenai masa berlaku dari voucher yang ditawarkan.",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "[Mitra] Bagaimana cara menampilkan kode di website?",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "[Voucher] Masalah terkait kode",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ToggleListItem(
                                title: Text(
                                  "[Penawaran] Masalah terkait penawaran",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                content: Container(
                                  color: yellow,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(Sizes.dp2(context)),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: black,
                                        fontSize: Sizes.dp4(context),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: Sizes.dp24(context)),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Punya pertanyaan lain? Hubungi kami melalui form di bawah ini.",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: blue,
                                fontSize: Sizes.dp4(context),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp2(context)),
                          Container(
                            width: Sizes.dp56(context) + Sizes.dp7(context),
                            child: BlocBuilder<NameValidator, String>(
                              builder: (context, state) {
                                if (state == "null") {
                                  return InputNameFieldContactUs(
                                    placeholder: "Nama",
                                  );
                                } else if (state == "valid") {
                                  return InputNameFieldContactUs(
                                    placeholder: "Nama",
                                  );
                                } else {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InputNameFieldContactUs(
                                        placeholder: "Nama",
                                        flag: "not valid",
                                      ),
                                      SizedBox(height: Sizes.dp1(context)),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Sizes.dp4(context)),
                                        child: Text(
                                          "Nama perlu diisi",
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: red,
                                              fontSize: Sizes.dp4(context),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Sizes.dp2(context)),
                                    ],
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(height: Sizes.dp2(context)),
                          Container(
                            width: Sizes.dp56(context) + Sizes.dp7(context),
                            child: BlocBuilder<EmailValidator, String>(
                              builder: (context, state) {
                                if (state == "null") {
                                  return InputEmailFieldContactUs(
                                    placeholder: "Email",
                                  );
                                } else if (state == "valid") {
                                  return InputEmailFieldContactUs(
                                    placeholder: "Email",
                                  );
                                } else {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InputEmailFieldContactUs(
                                        placeholder: "Email",
                                        flag: "not valid",
                                      ),
                                      SizedBox(height: Sizes.dp1(context)),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Sizes.dp4(context)),
                                        child: Text(
                                          "Email perlu diisi",
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: red,
                                              fontSize: Sizes.dp4(context),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Sizes.dp2(context)),
                                    ],
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(height: Sizes.dp2(context)),
                          Container(
                            width: Sizes.dp56(context) + Sizes.dp7(context),
                            child: BlocBuilder<PesanValidator, String>(
                              builder: (context, state) {
                                if (state == "null") {
                                  return InputMessageFieldMessage(
                                      placeholder: "Isi pesanmu disini");
                                } else if (state == "valid") {
                                  return InputMessageFieldMessage(
                                      placeholder: "Isi pesanmu disini");
                                } else {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InputMessageFieldMessage(
                                        placeholder: "Isi pesanmu disini",
                                        flag: "not valid",
                                      ),
                                      SizedBox(height: Sizes.dp1(context)),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Sizes.dp4(context)),
                                        child: Text(
                                          "Pesan perlu diisi",
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: red,
                                              fontSize: Sizes.dp4(context),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Sizes.dp2(context)),
                                    ],
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(height: Sizes.dp2(context)),
                          Container(
                            width: Sizes.dp56(context) + Sizes.dp7(context),
                            child: InkWell(
                              borderRadius:
                                  BorderRadius.circular(Sizes.dp2(context)),
                              onTap: () {
                                if (formKey.currentState!.validate() == true) {
                                  if (name == "null" ||
                                      email == "null" ||
                                      message == "null") {
                                    print("Submit Failed");
                                  } else {
                                    print("Submit Success");
                                    Dialogs.materialDialog(
                                      color: Colors.white,
                                      title: 'Berhasil dikirim!',
                                      titleStyle: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: black,
                                          fontSize: Sizes.dp5(context),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      lottieBuilder: Lottie.asset(
                                        'assets/animation/successful-tick.json',
                                        frameRate: FrameRate(60),
                                        fit: BoxFit.contain,
                                      ),
                                      dialogWidth: kIsWeb ? 0.1 : null,
                                      context: context,
                                      onClose: (value) {
                                        Application.router.navigateTo(
                                          context,
                                          "/contactus",
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: teal,
                                  // border: Border.all(),
                                  borderRadius:
                                      BorderRadius.circular(Sizes.dp1(context)),
                                ),
                                height: Sizes.dp12(context),
                                width: Sizes.dp36(context),
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(color: white),
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp14(context)),
                          Text(
                            "Anda juga dapat menghubungi kami melalui",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp4(context),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp1(context)),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/phone-call.png',
                                width: Sizes.dp5(context),
                              ),
                              SizedBox(width: Sizes.dp1(context)),
                              Text(
                                "Call Center - 081234598343",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Sizes.dp1(context)),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/whatsapp.png',
                                width: Sizes.dp5(context),
                              ),
                              SizedBox(width: Sizes.dp1(context)),
                              Text(
                                "WhatsApp  - 081223932322",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
