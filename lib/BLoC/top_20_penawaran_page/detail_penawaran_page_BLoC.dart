import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPenawaran extends Bloc<String, Top20Penawaran> {
  DetailPenawaran() : super(top20penawaran[0]) {
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

class FilterResultDetail
    extends Bloc<List<Top20Penawaran>, List<Top20Penawaran>> {
  FilterResultDetail() : super([]) {
    on<List<Top20Penawaran>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterResultDetailLength extends Bloc<int, int> {
  FilterResultDetailLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterNameDetail extends Bloc<String, String> {
  FilterNameDetail() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterWaktu extends Bloc<String, String> {
  FilterWaktu() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterSuka extends Bloc<String, String> {
  FilterSuka() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
