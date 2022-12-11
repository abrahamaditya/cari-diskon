import 'package:caridiskon/data/filter.dart';
import 'package:caridiskon/data/tukar_poin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterTukarPoinResult extends Bloc<List<TukarPoin>, List<TukarPoin>> {
  FilterTukarPoinResult() : super([]) {
    on<List<TukarPoin>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinName extends Bloc<String, String> {
  FilterTukarPoinName() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinMasaBerlaku extends Bloc<String, String> {
  FilterTukarPoinMasaBerlaku() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinPenilaian extends Bloc<String, String> {
  FilterTukarPoinPenilaian() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinTipe extends Bloc<String, String> {
  FilterTukarPoinTipe() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinKategori extends Bloc<String, String> {
  FilterTukarPoinKategori() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinToko extends Bloc<String, String> {
  FilterTukarPoinToko() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinResultLength extends Bloc<int, int> {
  FilterTukarPoinResultLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinButton extends Bloc<String, List> {
  FilterTukarPoinButton() : super([]) {
    List result = ["null", "null", "null"];
    on<String>(
      (_, emit) {
        if (_ == "Cari") {
          print(result);
          emit(result);
        } else {
          if (tipeFilterData.contains(_) == true) {
            result.removeAt(0);
            result.insert(0, _);
          }
          if (kategoriFilterData.contains(_) == true) {
            result.removeAt(1);
            result.insert(1, _);
          }
          if (tokoFilterData.contains(_) == true) {
            result.removeAt(2);
            result.insert(2, _);
          }

          // // Tipe = [0]
          // if (tipeFilterData.contains(_) == true) {
          //   result.add(_);
          // } else if (tipeFilterData.contains(_) == false) {
          //   result.add("null");
          // }
          // // Kategori = [1]
          // //result.add("null");
          // else if (kategoriFilterData.contains(_) == false) {
          //   result.add("null");
          // }
          // // Toko = [2]
          // else if (tokoFilterData.contains(_) == true) {
          //   result.add(_);
          // } else if (tokoFilterData.contains(_) == false) {
          //   result.add("null");
          // }
        }
      },
    );
  }
}

class FilterTukarPoinAble extends Bloc<String, String> {
  FilterTukarPoinAble() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

///////////////////////////////////

class DetailTukarPoinPenawaran extends Bloc<String, TukarPoin> {
  DetailTukarPoinPenawaran() : super(tukarpoin[0]) {
    on<String>(
      (_, emit) {
        for (int i = 0; i < tukarpoin.length; i++) {
          if (tukarpoin[i].id == _) {
            emit(tukarpoin[i]);
          }
        }
      },
    );
  }
}

class FilterTukarPoinResultDetail
    extends Bloc<List<TukarPoin>, List<TukarPoin>> {
  FilterTukarPoinResultDetail() : super([]) {
    on<List<TukarPoin>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinResultDetailLength extends Bloc<int, int> {
  FilterTukarPoinResultDetailLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinNameDetail extends Bloc<String, String> {
  FilterTukarPoinNameDetail() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinWaktu extends Bloc<String, String> {
  FilterTukarPoinWaktu() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTukarPoinSuka extends Bloc<String, String> {
  FilterTukarPoinSuka() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SukaButtonTukarPoin extends Bloc<String, String> {
  SukaButtonTukarPoin() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SukaKeyButtonTukarPoin extends Bloc<String, String> {
  SukaKeyButtonTukarPoin() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class TukarPoinContainer extends Bloc<String, String> {
  TukarPoinContainer() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
