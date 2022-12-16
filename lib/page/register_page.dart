import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/login_regist_filler.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/text_email_insert_field.dart';
import 'package:caridiskon/widget/text_name_field.dart';
import 'package:caridiskon/widget/text_password_insert_field.dart';
import 'package:caridiskon/widget/text_phone_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => NamaSaved()),
          BlocProvider(create: (_) => EmailSaved()),
          BlocProvider(create: (_) => PhoneSaved()),
          BlocProvider(create: (_) => PasswordSaved()),
          BlocProvider(create: (_) => NameValidator()),
          BlocProvider(create: (_) => EmailValidator()),
          BlocProvider(create: (_) => PhoneValidator()),
          BlocProvider(create: (_) => PasswordValidator()),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: FooterView(
            flex: 10,
            footer: Footer(
              child: FooterWidget(),
              padding: EdgeInsets.zero,
            ),
            children: [loginPageView(context)],
          ),
        ),
      ),
    );
  }

  Widget loginPageView(BuildContext context) {
    String? nama = "null";
    String? email = "null";
    String? phone = "null";
    String? password = "null";
    String? poin = "0";
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
        child: Column(
      children: [
        BlocListener<NamaSaved, String>(
          listener: (context, state) {
            nama = state;
          },
          child: SizedBox.shrink(),
        ),
        BlocListener<EmailSaved, String>(
          listener: (context, state) {
            email = state;
          },
          child: SizedBox.shrink(),
        ),
        BlocListener<PhoneSaved, String>(
          listener: (context, state) {
            phone = state;
          },
          child: SizedBox.shrink(),
        ),
        BlocListener<PasswordSaved, String>(
          listener: (context, state) {
            password = state;
          },
          child: SizedBox.shrink(),
        ),
        AppNavigationBar(),
        promoBar(context),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.dp24(context),
                vertical: Sizes.dp10(context),
              ),
              width: Sizes.dp60(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Daftar",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: teal,
                          fontSize: Sizes.dp10(context),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.dp2(context)),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yuk, buat akun untuk mengeksplor penawaran",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp5(context),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          "dengan keuntungan lebih banyak!",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp5(context),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Sizes.dp10(context)),
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocBuilder<NameValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return InputNameField(
                                placeholder: "Nama",
                              );
                            } else if (state == "valid") {
                              return InputNameField(
                                placeholder: "Nama",
                              );
                            } else {
                              return InputNameField(
                                placeholder: "Nama",
                                flag: "not valid",
                              );
                            }
                          },
                        ),
                        BlocBuilder<NameValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return SizedBox.shrink();
                            } else if (state == "valid") {
                              return SizedBox.shrink();
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                        SizedBox(height: Sizes.dp2(context)),
                        BlocBuilder<EmailValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return InputEmailInsertField(
                                placeholder: "Email",
                              );
                            } else if (state == "valid") {
                              return InputEmailInsertField(
                                placeholder: "Email",
                              );
                            } else {
                              return InputEmailInsertField(
                                placeholder: "Email",
                                flag: "not valid",
                              );
                            }
                          },
                        ),
                        BlocBuilder<EmailValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return SizedBox.shrink();
                            } else if (state == "valid") {
                              return SizedBox.shrink();
                            } else if (state == "Email kurang tepat") {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: Sizes.dp1(context)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: Sizes.dp4(context)),
                                    child: Text(
                                      "Email kurang tepat",
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
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                        SizedBox(height: Sizes.dp2(context)),
                        BlocBuilder<PhoneValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return InputPhoneField(
                                placeholder: "Nomor WhatsApp",
                              );
                            } else if (state == "valid") {
                              return InputPhoneField(
                                placeholder: "Nomor WhatsApp",
                              );
                            } else {
                              return InputPhoneField(
                                placeholder: "Nomor WhatsApp",
                                flag: "not valid",
                              );
                            }
                          },
                        ),
                        BlocBuilder<PhoneValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return SizedBox.shrink();
                            } else if (state == "valid") {
                              return SizedBox.shrink();
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: Sizes.dp1(context)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: Sizes.dp4(context)),
                                    child: Text(
                                      "Nomor WhatsApp perlu diisi",
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
                        SizedBox(height: Sizes.dp2(context)),
                        BlocBuilder<PasswordValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return InputPasswordInsertField(
                                placeholder: "Password",
                              );
                            } else if (state == "valid") {
                              return InputPasswordInsertField(
                                placeholder: "Password",
                              );
                            } else {
                              return InputPasswordInsertField(
                                placeholder: "Password",
                                flag: "not valid",
                              );
                            }
                          },
                        ),
                        BlocBuilder<PasswordValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return SizedBox.shrink();
                            } else if (state == "valid") {
                              return SizedBox.shrink();
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: Sizes.dp1(context)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: Sizes.dp4(context)),
                                    child: Text(
                                      "Password perlu diisi",
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
                        SizedBox(height: Sizes.dp10(context)),
                        Container(
                          width: Sizes.dp30(context),
                          child: InkWell(
                            borderRadius:
                                BorderRadius.circular(Sizes.dp2(context)),
                            onTap: () {
                              if (formKey.currentState!.validate() == true) {
                                // print("nama: " + nama!);
                                // print("email: " + email!);
                                // print("phone: " + phone!);
                                // print("password: " + password!);
                                if (nama == "null" ||
                                    email == "null" ||
                                    email!.contains("@") == false ||
                                    phone == "null" ||
                                    password == "null") {
                                  print("Register Failed");
                                } else {
                                  Account newData = new Account(
                                    (account.length + 1).toString(),
                                    Guid.newGuid.toString(),
                                    nama!,
                                    phone!,
                                    email!,
                                    password!,
                                    poin,
                                    [],
                                  );
                                  account.add(newData);
                                  print("Register Success");

                                  Dialogs.materialDialog(
                                    color: Colors.white,
                                    title: 'Pendaftaran Berhasil!',
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
                                      // height: Sizes.dp1(context),
                                      // width: Sizes.dp1(context),
                                    ),
                                    dialogWidth: kIsWeb ? 0.1 : null,
                                    context: context,
                                    // actions: [
                                    //   IconsButton(
                                    //     onPressed: () {
                                    //       Navigator.of(context).pop();
                                    //     },
                                    //     text: 'Tutup',
                                    //     iconData: Icons.done,
                                    //     color: Colors.blue,
                                    //     textStyle: TextStyle(color: Colors.white),
                                    //     iconColor: Colors.white,
                                    //   ),
                                    // ],
                                    actions: [
                                      Container(
                                        width: Sizes.dp30(context),
                                        child: InkWell(
                                          borderRadius: BorderRadius.circular(
                                              Sizes.dp2(context)),
                                          onTap: () {
                                            Application.router
                                                .navigateTo(context, "/login");
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: teal,
                                              // border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Sizes.dp1(context)),
                                            ),
                                            height: Sizes.dp12(context),
                                            width: Sizes.dp36(context),
                                            child: Text(
                                              "Masuk",
                                              style: GoogleFonts.inter(
                                                textStyle:
                                                    TextStyle(color: white),
                                                fontSize: Sizes.dp4(context),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                    onClose: (value) {
                                      Application.router
                                          .navigateTo(context, "/login");
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
                                "Daftar",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: white),
                                  fontSize: Sizes.dp4(context),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Sizes.dp10(context)),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        text: "Sudah punya akun? ",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp4(context),
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: "Masuk",
                            style: TextStyle(
                                color: teal, fontSize: Sizes.dp4(context)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Application.router
                                    .navigateTo(context, "/login");
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            loginRegistFiller(),
          ],
        )
      ],
    ));
  }
}
