import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembresiaRecord extends FirestoreRecord {
  MembresiaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "estrellas" field.
  int? _estrellas;
  int get estrellas => _estrellas ?? 0;
  bool hasEstrellas() => _estrellas != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "cantidadInfluencer" field.
  int? _cantidadInfluencer;
  int get cantidadInfluencer => _cantidadInfluencer ?? 0;
  bool hasCantidadInfluencer() => _cantidadInfluencer != null;

  // "beneficio1" field.
  String? _beneficio1;
  String get beneficio1 => _beneficio1 ?? '';
  bool hasBeneficio1() => _beneficio1 != null;

  // "beneficio2" field.
  String? _beneficio2;
  String get beneficio2 => _beneficio2 ?? '';
  bool hasBeneficio2() => _beneficio2 != null;

  // "beneficio3" field.
  String? _beneficio3;
  String get beneficio3 => _beneficio3 ?? '';
  bool hasBeneficio3() => _beneficio3 != null;

  // "listaComercio" field.
  List<String>? _listaComercio;
  List<String> get listaComercio => _listaComercio ?? const [];
  bool hasListaComercio() => _listaComercio != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "resumen" field.
  String? _resumen;
  String get resumen => _resumen ?? '';
  bool hasResumen() => _resumen != null;

  void _initializeFields() {
    _categoria = snapshotData['categoria'] as String?;
    _estrellas = castToType<int>(snapshotData['estrellas']);
    _precio = castToType<int>(snapshotData['precio']);
    _cantidadInfluencer = castToType<int>(snapshotData['cantidadInfluencer']);
    _beneficio1 = snapshotData['beneficio1'] as String?;
    _beneficio2 = snapshotData['beneficio2'] as String?;
    _beneficio3 = snapshotData['beneficio3'] as String?;
    _listaComercio = getDataList(snapshotData['listaComercio']);
    _descripcion = snapshotData['descripcion'] as String?;
    _resumen = snapshotData['resumen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Membresia');

  static Stream<MembresiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembresiaRecord.fromSnapshot(s));

  static Future<MembresiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembresiaRecord.fromSnapshot(s));

  static MembresiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembresiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembresiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembresiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembresiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembresiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembresiaRecordData({
  String? categoria,
  int? estrellas,
  int? precio,
  int? cantidadInfluencer,
  String? beneficio1,
  String? beneficio2,
  String? beneficio3,
  String? descripcion,
  String? resumen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoria': categoria,
      'estrellas': estrellas,
      'precio': precio,
      'cantidadInfluencer': cantidadInfluencer,
      'beneficio1': beneficio1,
      'beneficio2': beneficio2,
      'beneficio3': beneficio3,
      'descripcion': descripcion,
      'resumen': resumen,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembresiaRecordDocumentEquality implements Equality<MembresiaRecord> {
  const MembresiaRecordDocumentEquality();

  @override
  bool equals(MembresiaRecord? e1, MembresiaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.categoria == e2?.categoria &&
        e1?.estrellas == e2?.estrellas &&
        e1?.precio == e2?.precio &&
        e1?.cantidadInfluencer == e2?.cantidadInfluencer &&
        e1?.beneficio1 == e2?.beneficio1 &&
        e1?.beneficio2 == e2?.beneficio2 &&
        e1?.beneficio3 == e2?.beneficio3 &&
        listEquality.equals(e1?.listaComercio, e2?.listaComercio) &&
        e1?.descripcion == e2?.descripcion &&
        e1?.resumen == e2?.resumen;
  }

  @override
  int hash(MembresiaRecord? e) => const ListEquality().hash([
        e?.categoria,
        e?.estrellas,
        e?.precio,
        e?.cantidadInfluencer,
        e?.beneficio1,
        e?.beneficio2,
        e?.beneficio3,
        e?.listaComercio,
        e?.descripcion,
        e?.resumen
      ]);

  @override
  bool isValidKey(Object? o) => o is MembresiaRecord;
}
