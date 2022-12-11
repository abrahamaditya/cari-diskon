import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/data/tukar_poin.dart';
import 'package:caridiskon/widget/card_v7_2.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget tukarPoinContent3(BuildContext context) {
  return BlocBuilder<FilterTukarPoinResult, List<TukarPoin>>(
    builder: (context, result) {
      return BlocBuilder<FilterTukarPoinName, String>(
        builder: (context, filter) {
          if (filter == "Masa Berlaku") {
            return BlocBuilder<FilterTukarPoinMasaBerlaku, String>(
              builder: (context, state) {
                return resultFilterMasaBerlaku(context, state, result);
              },
            );
          } else if (filter == "Penilaian") {
            return BlocBuilder<FilterTukarPoinPenilaian, String>(
              builder: (context, state) {
                return resultFilterPenilaian(context, state, result);
              },
            );
          } else if (filter == "Cari") {
            return BlocBuilder<FilterTukarPoinButton, List>(
              builder: (context, state) {
                // Single
                // Tipe | null | null
                if (state[0] != "null" &&
                    state[1] == "null" &&
                    state[2] == "null") {
                  return resultCariSingleTipe(context, state);
                }
                // null | Kategori | null
                else if (state[0] == "null" &&
                    state[1] != "null" &&
                    state[2] == "null") {
                  return resultCariSingleKategori(context, state);
                }
                // null | null | Toko
                else if (state[0] == "null" &&
                    state[1] == "null" &&
                    state[2] != "null") {
                  return resultCariSingleToko(context, state);
                }

                // Double
                // Tipe | Kategori | null
                else if (state[0] != "null" &&
                    state[1] != "null" &&
                    state[2] == "null") {
                  return resultCariDoubleTipeKategori(context, state);
                }
                // Tipe | null | Toko
                else if (state[0] != "null" &&
                    state[1] == "null" &&
                    state[2] != "null") {
                  return resultCariDoubleTipeToko(context, state);
                }
                // null | Kategori | Toko
                else if (state[0] == "null" &&
                    state[1] != "null" &&
                    state[2] != "null") {
                  return resultCariDoubleKategoriToko(context, state);
                }

                // Triple
                // Tipe | Kategori | Toko
                else if (state[0] != "null" &&
                    state[1] != "null" &&
                    state[2] != "null") {
                  return resultCariTriple(context, state);
                } else {
                  return Text("waaaw");
                }
              },
            );
          } else {
            return defaultResult(context);
          }
        },
      );
    },
  );
}

Widget defaultResult(BuildContext context) {
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: tukarpoin.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(tukarpoin);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(tukarpoin.length);
        tukarpoin.sort(((a, b) => a.id.compareTo(b.id)));
        return cardV7_2(
          id: tukarpoin[index].id,
          name: tukarpoin[index].name,
          poin: tukarpoin[index].poin,
          amount: tukarpoin[index].amount,
          brand: tukarpoin[index].brand,
          image: tukarpoin[index].framedLogo,
          deadline: tukarpoin[index].deadline,
          type: tukarpoin[index].type,
          rating: tukarpoin[index].rating,
          totalRating: tukarpoin[index].totalRating,
        );
      },
    ),
  );
}

Widget resultFilterMasaBerlaku(
    BuildContext context, String state, List<TukarPoin> result) {
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "latest") {
          result.sort(((a, b) => a.deadline.compareTo(b.deadline)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultLength>(context)
              .add(filteredResult.length);
          return cardV7_2(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            poin: filteredResult[index].poin,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            image: filteredResult[index].framedLogo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
            totalRating: filteredResult[index].totalRating,
          );
        } else if (state == "farthest") {
          result.sort(((a, b) => b.deadline.compareTo(a.deadline)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultLength>(context)
              .add(filteredResult.length);
          return cardV7_2(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            poin: filteredResult[index].poin,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            image: filteredResult[index].framedLogo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
            totalRating: filteredResult[index].totalRating,
          );
        }
        return defaultResult(context);
      },
    ),
  );
}

Widget resultFilterPenilaian(
    BuildContext context, String state, List<TukarPoin> result) {
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "best") {
          result.sort(((a, b) => b.rating.compareTo(a.rating)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultLength>(context)
              .add(filteredResult.length);
          return cardV7_2(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            poin: filteredResult[index].poin,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            image: filteredResult[index].framedLogo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
            totalRating: filteredResult[index].totalRating,
          );
        } else if (state == "worst") {
          result.sort(((a, b) => a.rating.compareTo(b.rating)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
          BlocProvider.of<FilterTukarPoinResultLength>(context)
              .add(filteredResult.length);
          return cardV7_2(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            poin: filteredResult[index].poin,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            image: filteredResult[index].framedLogo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
            totalRating: filteredResult[index].totalRating,
          );
        }
        return defaultResult(context);
      },
    ),
  );
}

Widget resultCariSingleTipe(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.type.contains(result[0]) == true) {
        filteredResult.add(element);
        counterNull++;
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}

Widget resultCariSingleKategori(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.category.contains(result[1]) == true) {
        filteredResult.add(element);
        counterNull++;
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context) + Sizes.dp10(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}

Widget resultCariSingleToko(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.brand.contains(result[2]) == true) {
        filteredResult.add(element);
        counterNull++;
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}

Widget resultCariDoubleKategoriToko(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.brand.compareTo(result[2]) == 0) {
        if (element.category.contains(result[1]) == true) {
          filteredResult.add(element);
          counterNull++;
        }
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}

Widget resultCariDoubleTipeToko(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.brand.compareTo(result[2]) == 0) {
        if (element.type.contains(result[0]) == true) {
          filteredResult.add(element);
          counterNull++;
        }
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}

Widget resultCariDoubleTipeKategori(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.category.contains(result[1]) == true) {
        if (element.type.contains(result[0]) == true) {
          filteredResult.add(element);
          counterNull++;
        }
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}

Widget resultCariTriple(BuildContext context, List result) {
  List<TukarPoin> filteredResult = [];
  int counterNull = 0;
  tukarpoin.forEach(
    (element) {
      if (element.brand.contains(result[2]) == true) {
        if (element.category.contains(result[1]) == true) {
          if (element.type.contains(result[0]) == true) {
            filteredResult.add(element);
            counterNull++;
          }
        }
      }
    },
  );
  if (counterNull == 0) {
    BlocProvider.of<FilterTukarPoinResultLength>(context).add(0);
  }
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: GridView.builder(
      //shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.85,
      ),
      itemCount: filteredResult.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterTukarPoinResult>(context).add(filteredResult);
        BlocProvider.of<FilterTukarPoinResultLength>(context)
            .add(filteredResult.length);
        return cardV7_2(
          id: filteredResult[index].id,
          name: filteredResult[index].name,
          poin: filteredResult[index].poin,
          amount: filteredResult[index].amount,
          brand: filteredResult[index].brand,
          image: filteredResult[index].framedLogo,
          deadline: filteredResult[index].deadline,
          type: filteredResult[index].type,
          rating: filteredResult[index].rating,
          totalRating: filteredResult[index].totalRating,
        );
      },
    ),
  );
}
