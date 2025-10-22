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
      _likeStateVideoAlternative =
          prefs.getBool('ff_likeStateVideoAlternative') ??
              _likeStateVideoAlternative;
    });
    _safeInit(() {
      _loveStateVideoAlternative =
          prefs.getBool('ff_loveStateVideoAlternative') ??
              _loveStateVideoAlternative;
    });
    _safeInit(() {
      _IsTimerRunning = prefs.getBool('ff_IsTimerRunning') ?? _IsTimerRunning;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _likeStateVideoAlternative = false;
  bool get likeStateVideoAlternative => _likeStateVideoAlternative;
  set likeStateVideoAlternative(bool value) {
    _likeStateVideoAlternative = value;
    prefs.setBool('ff_likeStateVideoAlternative', value);
  }

  bool _loveStateVideoAlternative = false;
  bool get loveStateVideoAlternative => _loveStateVideoAlternative;
  set loveStateVideoAlternative(bool value) {
    _loveStateVideoAlternative = value;
    prefs.setBool('ff_loveStateVideoAlternative', value);
  }

  bool _isExpanded = false;
  bool get isExpanded => _isExpanded;
  set isExpanded(bool value) {
    _isExpanded = value;
  }

  int _expandedIndex = -1;
  int get expandedIndex => _expandedIndex;
  set expandedIndex(int value) {
    _expandedIndex = value;
  }

  int _remainigSeconds = 0;
  int get remainigSeconds => _remainigSeconds;
  set remainigSeconds(int value) {
    _remainigSeconds = value;
  }

  bool _IsTimerRunning = false;
  bool get IsTimerRunning => _IsTimerRunning;
  set IsTimerRunning(bool value) {
    _IsTimerRunning = value;
    prefs.setBool('ff_IsTimerRunning', value);
  }

  double _progressPercent = 0.0;
  double get progressPercent => _progressPercent;
  set progressPercent(double value) {
    _progressPercent = value;
  }

  double _currentDistanceKm = 0.0;
  double get currentDistanceKm => _currentDistanceKm;
  set currentDistanceKm(double value) {
    _currentDistanceKm = value;
  }

  double _finalTargetKm = 0.0;
  double get finalTargetKm => _finalTargetKm;
  set finalTargetKm(double value) {
    _finalTargetKm = value;
  }

  double _progressState = 0.0;
  double get progressState => _progressState;
  set progressState(double value) {
    _progressState = value;
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
