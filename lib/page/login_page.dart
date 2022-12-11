import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/login_regist_filler.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/text_email_field.dart';
import 'package:caridiskon/widget/text_password_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => EmailSaved()),
          BlocProvider(create: (_) => PasswordSaved()),
          BlocProvider(create: (_) => EmailValidator()),
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
    String? email = "null";
    String? password = "null";
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
        child: Column(
      children: [
        BlocListener<EmailSaved, String>(
          listener: (context, state) {
            email = state;
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
                      "Masuk",
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
                          "Masuk dan cari penawaran sambil",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp5(context),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          "mengumpulkan poinmu!",
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
                        BlocBuilder<EmailValidator, String>(
                          builder: (context, state) {
                            if (state == "null") {
                              return Column(
                                children: [
                                  InputEmailField(
                                    placeholder: "Email",
                                  ),
                                  SizedBox(height: Sizes.dp2(context)),
                                  InputPasswordField(
                                    placeholder: "Password",
                                  ),
                                ],
                              );
                            } else if (state == "valid") {
                              return BlocBuilder<PasswordValidator, String>(
                                builder: (context, state) {
                                  if (state == "valid") {
                                    return Column(
                                      children: [
                                        InputEmailField(
                                          placeholder: "Email",
                                          initialValue: email,
                                        ),
                                        SizedBox(height: Sizes.dp2(context)),
                                        InputPasswordField(
                                          placeholder: "Password",
                                          initialValue: password == "null"
                                              ? ""
                                              : password,
                                        ),
                                      ],
                                    );
                                  } else {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InputEmailField(
                                          placeholder: "Email",
                                          flag: "not valid",
                                          initialValue: email,
                                        ),
                                        SizedBox(height: Sizes.dp2(context)),
                                        InputPasswordField(
                                          placeholder: "Password",
                                          flag: "not valid",
                                          initialValue: password == "null"
                                              ? ""
                                              : password,
                                        ),
                                        SizedBox(height: Sizes.dp1(context)),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: Sizes.dp4(context)),
                                          child: Text(
                                            "Email atau Password salah",
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: red,
                                                fontSize: Sizes.dp4(context),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                },
                              );
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InputEmailField(
                                    placeholder: "Email",
                                    flag: "not valid",
                                    initialValue: email,
                                  ),
                                  SizedBox(height: Sizes.dp2(context)),
                                  InputPasswordField(
                                    placeholder: "Password",
                                    flag: "not valid",
                                    initialValue:
                                        password == "null" ? "" : password,
                                  ),
                                  SizedBox(height: Sizes.dp1(context)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: Sizes.dp4(context)),
                                    child: Text(
                                      "Email atau Password salah",
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: red,
                                          fontSize: Sizes.dp4(context),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
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
                                if (email == "null" && password == "null") {
                                  print("Login Failed");
                                } else {
                                  // Check Email
                                  for (int i = 0; i < account.length; i++) {
                                    if (account[i].email == email) {
                                      // Check Password
                                      if (account[i].password == password) {
                                        LoginStatus = true;
                                        accountAuthorized = Account(
                                          account[i].id,
                                          account[i].GUID,
                                          account[i].name,
                                          account[i].phone,
                                          account[i].email,
                                          account[i].password,
                                          account[i].poin,
                                          account[i].promoTaken,
                                        );
                                        print("Login Success");
                                        Application.router
                                            .navigateTo(context, "/");
                                        break;
                                      } else {
                                        print("Login Failed");
                                        break;
                                      }
                                    } else {
                                      if (i == account.length - 1) {
                                        print("Login Failed");
                                      }
                                    }
                                  }
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
                      ],
                    ),
                  ),
                  SizedBox(height: Sizes.dp10(context)),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        text: "Belum punya akun? ",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp4(context),
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: "Daftar",
                            style: TextStyle(
                                color: teal, fontSize: Sizes.dp4(context)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Application.router
                                    .navigateTo(context, "/register");
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
