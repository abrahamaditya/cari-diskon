import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/data/tukar_poin.dart';
import 'package:caridiskon/widget/chat_review_box_tukar_poin.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget detailTukarPoinContent4(
    BuildContext context, TukarPoin data, int index) {
  return BlocBuilder<FilterTukarPoinResultDetail, List<TukarPoin>>(
    builder: (context, result) {
      return BlocBuilder<FilterTukarPoinNameDetail, String>(
        builder: (context, filter) {
          if (filter == "Waktu") {
            return BlocBuilder<FilterTukarPoinWaktu, String>(
              builder: (context, state) {
                return resultFilterWaktu(context, state, result, index);
              },
            );
          }
          if (filter == "Suka") {
            return BlocBuilder<FilterTukarPoinSuka, String>(
              builder: (context, state) {
                return resultFilterSuka(context, state, result, index);
              },
            );
          }
          return defaultResult(context, index);
        },
      );
    },
  );
}

Widget defaultResult(BuildContext context, int i) {
  return Container(
    height: Sizes.dp50(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: ListView.builder(
      itemCount: tukarpoin[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResultDetail>(context).add(tukarpoin);
        return ChatReviewBoxTukarPoin(
          i: i,
          index: index,
          name: tukarpoin[i].review[index].name,
          comment: tukarpoin[i].review[index].comment,
          date: tukarpoin[i].review[index].date,
          likes: tukarpoin[i].review[index].likes,
          rating: tukarpoin[i].review[index].rating,
        );
      },
    ),
  );
}

Widget resultFilterSuka(
    BuildContext context, String state, List<TukarPoin> result, int i) {
  int defaultIndex = i;
  return Container(
    height: Sizes.dp50(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: ListView.builder(
      itemCount: result[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "best") {
          result[i].review.sort(((a, b) => b.likes.compareTo(a.likes)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResultDetail>(context)
              .add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTukarPoin(
            i: i,
            index: index,
            name: tukarpoin[i].review[index].name,
            comment: tukarpoin[i].review[index].comment,
            date: tukarpoin[i].review[index].date,
            likes: tukarpoin[i].review[index].likes,
            rating: tukarpoin[i].review[index].rating,
          );
        } else if (state == "worst") {
          result[i].review.sort(((a, b) => a.likes.compareTo(b.likes)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResultDetail>(context)
              .add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTukarPoin(
            i: i,
            index: index,
            name: tukarpoin[i].review[index].name,
            comment: tukarpoin[i].review[index].comment,
            date: tukarpoin[i].review[index].date,
            likes: tukarpoin[i].review[index].likes,
            rating: tukarpoin[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}

Widget resultFilterWaktu(
    BuildContext context, String state, List<TukarPoin> result, int i) {
  int defaultIndex = i;
  return Container(
    height: Sizes.dp50(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: ListView.builder(
      itemCount: result[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "latest") {
          result[i].review.sort(((a, b) => b.date.compareTo(a.date)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResultDetail>(context)
              .add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTukarPoin(
            i: i,
            index: index,
            name: tukarpoin[i].review[index].name,
            comment: tukarpoin[i].review[index].comment,
            date: tukarpoin[i].review[index].date,
            likes: tukarpoin[i].review[index].likes,
            rating: tukarpoin[i].review[index].rating,
          );
        } else if (state == "farthest") {
          result[i].review.sort(((a, b) => a.date.compareTo(b.date)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResultDetail>(context)
              .add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTukarPoin(
            i: i,
            index: index,
            name: tukarpoin[i].review[index].name,
            comment: tukarpoin[i].review[index].comment,
            date: tukarpoin[i].review[index].date,
            likes: tukarpoin[i].review[index].likes,
            rating: tukarpoin[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}
