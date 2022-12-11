import 'package:caridiskon/data/filter.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterTop20Result
    extends Bloc<List<Top20Penawaran>, List<Top20Penawaran>> {
  FilterTop20Result() : super([]) {
    on<List<Top20Penawaran>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Name extends Bloc<String, String> {
  FilterTop20Name() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20MasaBerlaku extends Bloc<String, String> {
  FilterTop20MasaBerlaku() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Penilaian extends Bloc<String, String> {
  FilterTop20Penilaian() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Tipe extends Bloc<String, String> {
  FilterTop20Tipe() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Kategori extends Bloc<String, String> {
  FilterTop20Kategori() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Toko extends Bloc<String, String> {
  FilterTop20Toko() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20ResultLength extends Bloc<int, int> {
  FilterTop20ResultLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Button extends Bloc<String, List> {
  FilterTop20Button() : super([]) {
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

class FilterTop20Able extends Bloc<String, String> {
  FilterTop20Able() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

///////////////////////////////////

class DetailTop20Penawaran extends Bloc<String, Top20Penawaran> {
  DetailTop20Penawaran() : super(top20penawaran[0]) {
    on<String>(
      (_, emit) {
        for (int i = 0; i < top20penawaran.length; i++) {
          if (top20penawaran[i].id == _) {
            emit(top20penawaran[i]);
          }
        }
      },
    );
  }
}

class FilterTop20ResultDetail
    extends Bloc<List<Top20Penawaran>, List<Top20Penawaran>> {
  FilterTop20ResultDetail() : super([]) {
    on<List<Top20Penawaran>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20ResultDetailLength extends Bloc<int, int> {
  FilterTop20ResultDetailLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20NameDetail extends Bloc<String, String> {
  FilterTop20NameDetail() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Waktu extends Bloc<String, String> {
  FilterTop20Waktu() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTop20Suka extends Bloc<String, String> {
  FilterTop20Suka() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SukaButtonTop20 extends Bloc<String, String> {
  SukaButtonTop20() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SukaKeyButtonTop20 extends Bloc<String, String> {
  SukaKeyButtonTop20() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
