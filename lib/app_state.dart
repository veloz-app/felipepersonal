import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _totalPageView = prefs.getInt('ff_totalPageView') ?? _totalPageView;
    });
    _safeInit(() {
      _ProgressBar = prefs.getDouble('ff_ProgressBar') ?? _ProgressBar;
    });
    _safeInit(() {
      _MetasSelecionadas =
          prefs.getString('ff_MetasSelecionadas') ?? _MetasSelecionadas;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _totalPageView = 3;
  int get totalPageView => _totalPageView;
  set totalPageView(int value) {
    _totalPageView = value;
    prefs.setInt('ff_totalPageView', value);
  }

  int _atualPageView = 0;
  int get atualPageView => _atualPageView;
  set atualPageView(int value) {
    _atualPageView = value;
  }

  double _ProgressBar = 0.0;
  double get ProgressBar => _ProgressBar;
  set ProgressBar(double value) {
    _ProgressBar = value;
    prefs.setDouble('ff_ProgressBar', value);
  }

  String _MetasSelecionadas = '';
  String get MetasSelecionadas => _MetasSelecionadas;
  set MetasSelecionadas(String value) {
    _MetasSelecionadas = value;
    prefs.setString('ff_MetasSelecionadas', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
