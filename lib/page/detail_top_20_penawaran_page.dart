import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/BLoC/rating_BLoC.dart';
import 'package:caridiskon/BLoC/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/detail_top_20_penawaran_content_1.dart';
import 'package:caridiskon/widget/detail_top_20_penawaran_content_2.dart';
import 'package:caridiskon/widget/detail_top_20_penawaran_content_3.dart';
import 'package:caridiskon/widget/detail_top_20_penawaran_content_4.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailTop20PenawaranPage extends StatelessWidget {
  DetailTop20PenawaranPage({super.key, required this.id});
  String id;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => DetailTop20Penawaran()),
          BlocProvider(create: (_) => FilterTop20Suka()),
          BlocProvider(create: (_) => FilterTop20Waktu()),
          BlocProvider(create: (_) => FilterTop20NameDetail()),
          BlocProvider(create: (_) => FilterTop20ResultDetail()),
          BlocProvider(create: (_) => FilterTop20ResultDetailLength()),
          BlocProvider(create: (_) => SukaButtonTop20()),
          BlocProvider(create: (_) => SukaKeyButtonTop20()),
          BlocProvider(create: (_) => RatingInput()),
          BlocProvider(create: (_) => InitialValidator()),
          BlocProvider(create: (_) => InitialSaved()),
          BlocProvider(create: (_) => CommentValidator()),
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
            children: [
              BlocBuilder<DetailTop20Penawaran, Top20Penawaran>(
                builder: (context, state) {
                  return blocBuilderFunction(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget blocBuilderFunction(BuildContext context) {
    BlocProvider.of<DetailTop20Penawaran>(context).add(id);
    return BlocBuilder<DetailTop20Penawaran, Top20Penawaran>(
      builder: (context, state) {
        return detailTop20PenawaranPageView(context, state);
      },
    );
  }

  Widget detailTop20PenawaranPageView(
      BuildContext context, Top20Penawaran data) {
    BlocProvider.of<DetailTop20Penawaran>(context).add(id);
    return SingleChildScrollView(
      child: Column(
        children: [
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: Sizes.dp10(context)),
              detailTop20PenawaranContent1(context, data),
              detailTop20PenawaranContent2(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailTop20PenawaranContent3(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailTop20PenawaranContent4(context, data, int.parse(id)),
            ],
          ),
          SizedBox(height: Sizes.dp12(context)),
        ],
      ),
    );
  }
}
