import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _likeState = false;
  bool get likeState => _likeState;
  set likeState(bool value) {
    _likeState = value;
  }

  bool _loveState = false;
  bool get loveState => _loveState;
  set loveState(bool value) {
    _loveState = value;
  }
}
