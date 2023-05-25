import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _vinculacion = prefs.getBool('ff_vinculacion') ?? _vinculacion;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _terms = false;
  bool get terms => _terms;
  set terms(bool _value) {
    _terms = _value;
  }

  bool _bienvenido = true;
  bool get bienvenido => _bienvenido;
  set bienvenido(bool _value) {
    _bienvenido = _value;
  }

  String _genero = '';
  String get genero => _genero;
  set genero(String _value) {
    _genero = _value;
  }

  String _porcentaje = '';
  String get porcentaje => _porcentaje;
  set porcentaje(String _value) {
    _porcentaje = _value;
  }

  String _ubicacion = '';
  String get ubicacion => _ubicacion;
  set ubicacion(String _value) {
    _ubicacion = _value;
  }

  String _nacimiento = '';
  String get nacimiento => _nacimiento;
  set nacimiento(String _value) {
    _nacimiento = _value;
  }

  String _rol = '';
  String get rol => _rol;
  set rol(String _value) {
    _rol = _value;
  }

  String _titulo = '';
  String get titulo => _titulo;
  set titulo(String _value) {
    _titulo = _value;
  }

  String _pago = '';
  String get pago => _pago;
  set pago(String _value) {
    _pago = _value;
  }

  String _nivel = '';
  String get nivel => _nivel;
  set nivel(String _value) {
    _nivel = _value;
  }

  String _campana = '';
  String get campana => _campana;
  set campana(String _value) {
    _campana = _value;
  }

  String _plataforma = '';
  String get plataforma => _plataforma;
  set plataforma(String _value) {
    _plataforma = _value;
  }

  String _formato = '';
  String get formato => _formato;
  set formato(String _value) {
    _formato = _value;
  }

  String _cantidadp = '';
  String get cantidadp => _cantidadp;
  set cantidadp(String _value) {
    _cantidadp = _value;
  }

  String _categorias = '';
  String get categorias => _categorias;
  set categorias(String _value) {
    _categorias = _value;
  }

  String _propuesta = '';
  String get propuesta => _propuesta;
  set propuesta(String _value) {
    _propuesta = _value;
  }

  String _horario = '';
  String get horario => _horario;
  set horario(String _value) {
    _horario = _value;
  }

  bool _vinculacion = false;
  bool get vinculacion => _vinculacion;
  set vinculacion(bool _value) {
    _vinculacion = _value;
    prefs.setBool('ff_vinculacion', _value);
  }

  String _categoriap = '';
  String get categoriap => _categoriap;
  set categoriap(String _value) {
    _categoriap = _value;
  }

  String _descripcionp = '';
  String get descripcionp => _descripcionp;
  set descripcionp(String _value) {
    _descripcionp = _value;
  }

  String _horariop = '';
  String get horariop => _horariop;
  set horariop(String _value) {
    _horariop = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
