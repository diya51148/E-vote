import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _IsShow = prefs.getBool('ff_IsShow') ?? _IsShow;
    });
    _safeInit(() {
      _CandidateId = prefs.getString('ff_CandidateId')?.ref ?? _CandidateId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _IsShow = false;
  bool get IsShow => _IsShow;
  set IsShow(bool value) {
    _IsShow = value;
    prefs.setBool('ff_IsShow', value);
  }

  DocumentReference? _CandidateId;
  DocumentReference? get CandidateId => _CandidateId;
  set CandidateId(DocumentReference? value) {
    _CandidateId = value;
    value != null
        ? prefs.setString('ff_CandidateId', value.path)
        : prefs.remove('ff_CandidateId');
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
