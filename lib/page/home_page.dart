import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/BLoC/rating_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/home_content_1.dart';
import 'package:caridiskon/widget/home_content_2.dart';
import 'package:caridiskon/widget/home_content_3.dart';
import 'package:caridiskon/widget/home_content_4.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => SendButton()),
          BlocProvider(create: (_) => InitialSaved()),
          BlocProvider(create: (_) => CommentSaved()),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: FooterView(
            flex: 10,
            footer: Footer(
              child: FooterWidget(),
              padding: EdgeInsets.zero,
            ),
            children: [homePageView(context)],
          ),
        ),
      ),
    );
  }

  Widget homePageView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          homeContent1(context),
          homeContent2(context),
          homeContent3(context),
          homeContent4(context),
        ],
      ),
    );
  }
}
