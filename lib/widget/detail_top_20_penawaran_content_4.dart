import 'package:caridiskon/BLoC/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/widget/chat_review_box_top_20_penawaran.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget detailTop20PenawaranContent4(
    BuildContext context, Top20Penawaran data, int index) {
  return BlocBuilder<FilterTop20ResultDetail, List<Top20Penawaran>>(
    builder: (context, result) {
      return BlocBuilder<FilterTop20NameDetail, String>(
        builder: (context, filter) {
          if (filter == "Waktu") {
            return BlocBuilder<FilterTop20Waktu, String>(
              builder: (context, state) {
                return resultFilterWaktu(context, state, result, index);
              },
            );
          }
          if (filter == "Suka") {
            return BlocBuilder<FilterTop20Suka, String>(
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
      itemCount: top20penawaran[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTop20ResultDetail>(context).add(top20penawaran);
        return ChatReviewBoxTop20Penawaran(
          i: i,
          index: index,
          name: top20penawaran[i].review[index].name,
          comment: top20penawaran[i].review[index].comment,
          date: top20penawaran[i].review[index].date,
          likes: top20penawaran[i].review[index].likes,
          rating: top20penawaran[i].review[index].rating,
        );
      },
    ),
  );
}

Widget resultFilterSuka(
    BuildContext context, String state, List<Top20Penawaran> result, int i) {
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
          BlocProvider.of<FilterTop20ResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterTop20ResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTop20Penawaran(
            i: i,
            index: index,
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        } else if (state == "worst") {
          result[i].review.sort(((a, b) => a.likes.compareTo(b.likes)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTop20ResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterTop20ResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTop20Penawaran(
            i: i,
            index: index,
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}

Widget resultFilterWaktu(
    BuildContext context, String state, List<Top20Penawaran> result, int i) {
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
          BlocProvider.of<FilterTop20ResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterTop20ResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTop20Penawaran(
            i: i,
            index: index,
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        } else if (state == "farthest") {
          result[i].review.sort(((a, b) => a.date.compareTo(b.date)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTop20ResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterTop20ResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxTop20Penawaran(
            i: i,
            index: index,
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}
