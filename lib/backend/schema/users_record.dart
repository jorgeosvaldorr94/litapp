import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  bool hasRol() => _rol != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "narea" field.
  String? _narea;
  String get narea => _narea ?? '';
  bool hasNarea() => _narea != null;

  // "tel" field.
  String? _tel;
  String get tel => _tel ?? '';
  bool hasTel() => _tel != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "profesion" field.
  String? _profesion;
  String get profesion => _profesion ?? '';
  bool hasProfesion() => _profesion != null;

  // "porcentaje" field.
  String? _porcentaje;
  String get porcentaje => _porcentaje ?? '';
  bool hasPorcentaje() => _porcentaje != null;

  // "nombrerepresentante" field.
  String? _nombrerepresentante;
  String get nombrerepresentante => _nombrerepresentante ?? '';
  bool hasNombrerepresentante() => _nombrerepresentante != null;

  // "nacimiento" field.
  String? _nacimiento;
  String get nacimiento => _nacimiento ?? '';
  bool hasNacimiento() => _nacimiento != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "tiktok" field.
  String? _tiktok;
  String get tiktok => _tiktok ?? '';
  bool hasTiktok() => _tiktok != null;

  // "twich" field.
  String? _twich;
  String get twich => _twich ?? '';
  bool hasTwich() => _twich != null;

  // "youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "portfolio" field.
  String? _portfolio;
  String get portfolio => _portfolio ?? '';
  bool hasPortfolio() => _portfolio != null;

  // "comercio" field.
  bool? _comercio;
  bool get comercio => _comercio ?? false;
  bool hasComercio() => _comercio != null;

  // "nombrecomercio" field.
  String? _nombrecomercio;
  String get nombrecomercio => _nombrecomercio ?? '';
  bool hasNombrecomercio() => _nombrecomercio != null;

  // "nombreyapellidodeencargado" field.
  String? _nombreyapellidodeencargado;
  String get nombreyapellidodeencargado => _nombreyapellidodeencargado ?? '';
  bool hasNombreyapellidodeencargado() => _nombreyapellidodeencargado != null;

  // "rolcomercio" field.
  String? _rolcomercio;
  String get rolcomercio => _rolcomercio ?? '';
  bool hasRolcomercio() => _rolcomercio != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "membershipActive" field.
  bool? _membershipActive;
  bool get membershipActive => _membershipActive ?? false;
  bool hasMembershipActive() => _membershipActive != null;

  // "lastPaymentId" field.
  String? _lastPaymentId;
  String get lastPaymentId => _lastPaymentId ?? '';
  bool hasLastPaymentId() => _lastPaymentId != null;

  // "paymentDate" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "typePayment" field.
  String? _typePayment;
  String get typePayment => _typePayment ?? '';
  bool hasTypePayment() => _typePayment != null;

  // "typeMembership" field.
  String? _typeMembership;
  String get typeMembership => _typeMembership ?? '';
  bool hasTypeMembership() => _typeMembership != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "fotoComercio" field.
  List<String>? _fotoComercio;
  List<String> get fotoComercio => _fotoComercio ?? const [];
  bool hasFotoComercio() => _fotoComercio != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "webSite" field.
  String? _webSite;
  String get webSite => _webSite ?? '';
  bool hasWebSite() => _webSite != null;

  // "fotoPerfilComercio" field.
  String? _fotoPerfilComercio;
  String get fotoPerfilComercio => _fotoPerfilComercio ?? '';
  bool hasFotoPerfilComercio() => _fotoPerfilComercio != null;

  // "calendario" field.
  DateTime? _calendario;
  DateTime? get calendario => _calendario;
  bool hasCalendario() => _calendario != null;

  // "idMembresia" field.
  String? _idMembresia;
  String get idMembresia => _idMembresia ?? '';
  bool hasIdMembresia() => _idMembresia != null;

  // "cantidadInfluMemb" field.
  int? _cantidadInfluMemb;
  int get cantidadInfluMemb => _cantidadInfluMemb ?? 0;
  bool hasCantidadInfluMemb() => _cantidadInfluMemb != null;

  // "pagoMembresia" field.
  int? _pagoMembresia;
  int get pagoMembresia => _pagoMembresia ?? 0;
  bool hasPagoMembresia() => _pagoMembresia != null;

  // "beneficio1Memb" field.
  String? _beneficio1Memb;
  String get beneficio1Memb => _beneficio1Memb ?? '';
  bool hasBeneficio1Memb() => _beneficio1Memb != null;

  // "beneficio2Memb" field.
  String? _beneficio2Memb;
  String get beneficio2Memb => _beneficio2Memb ?? '';
  bool hasBeneficio2Memb() => _beneficio2Memb != null;

  // "beneficio3Memb" field.
  String? _beneficio3Memb;
  String get beneficio3Memb => _beneficio3Memb ?? '';
  bool hasBeneficio3Memb() => _beneficio3Memb != null;

  // "isInfluencer" field.
  bool? _isInfluencer;
  bool get isInfluencer => _isInfluencer ?? false;
  bool hasIsInfluencer() => _isInfluencer != null;

  // "idOfertasPropias" field.
  List<String>? _idOfertasPropias;
  List<String> get idOfertasPropias => _idOfertasPropias ?? const [];
  bool hasIdOfertasPropias() => _idOfertasPropias != null;

  // "fotoProtfolio" field.
  List<String>? _fotoProtfolio;
  List<String> get fotoProtfolio => _fotoProtfolio ?? const [];
  bool hasFotoProtfolio() => _fotoProtfolio != null;

  // "idMisSolicitudes" field.
  List<String>? _idMisSolicitudes;
  List<String> get idMisSolicitudes => _idMisSolicitudes ?? const [];
  bool hasIdMisSolicitudes() => _idMisSolicitudes != null;

  // "chatActivo" field.
  bool? _chatActivo;
  bool get chatActivo => _chatActivo ?? false;
  bool hasChatActivo() => _chatActivo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _rol = snapshotData['rol'] as String?;
    _active = snapshotData['active'] as bool?;
    _name = snapshotData['name'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _narea = snapshotData['narea'] as String?;
    _tel = snapshotData['tel'] as String?;
    _genero = snapshotData['genero'] as String?;
    _pais = snapshotData['pais'] as String?;
    _profesion = snapshotData['profesion'] as String?;
    _porcentaje = snapshotData['porcentaje'] as String?;
    _nombrerepresentante = snapshotData['nombrerepresentante'] as String?;
    _nacimiento = snapshotData['nacimiento'] as String?;
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _instagram = snapshotData['instagram'] as String?;
    _tiktok = snapshotData['tiktok'] as String?;
    _twich = snapshotData['twich'] as String?;
    _youtube = snapshotData['youtube'] as String?;
    _portfolio = snapshotData['portfolio'] as String?;
    _comercio = snapshotData['comercio'] as bool?;
    _nombrecomercio = snapshotData['nombrecomercio'] as String?;
    _nombreyapellidodeencargado =
        snapshotData['nombreyapellidodeencargado'] as String?;
    _rolcomercio = snapshotData['rolcomercio'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _codigo = snapshotData['codigo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _membershipActive = snapshotData['membershipActive'] as bool?;
    _lastPaymentId = snapshotData['lastPaymentId'] as String?;
    _paymentDate = snapshotData['paymentDate'] as DateTime?;
    _typePayment = snapshotData['typePayment'] as String?;
    _typeMembership = snapshotData['typeMembership'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _address = snapshotData['address'] as String?;
    _fotoComercio = getDataList(snapshotData['fotoComercio']);
    _facebook = snapshotData['facebook'] as String?;
    _webSite = snapshotData['webSite'] as String?;
    _fotoPerfilComercio = snapshotData['fotoPerfilComercio'] as String?;
    _calendario = snapshotData['calendario'] as DateTime?;
    _idMembresia = snapshotData['idMembresia'] as String?;
    _cantidadInfluMemb = castToType<int>(snapshotData['cantidadInfluMemb']);
    _pagoMembresia = castToType<int>(snapshotData['pagoMembresia']);
    _beneficio1Memb = snapshotData['beneficio1Memb'] as String?;
    _beneficio2Memb = snapshotData['beneficio2Memb'] as String?;
    _beneficio3Memb = snapshotData['beneficio3Memb'] as String?;
    _isInfluencer = snapshotData['isInfluencer'] as bool?;
    _idOfertasPropias = getDataList(snapshotData['idOfertasPropias']);
    _fotoProtfolio = getDataList(snapshotData['fotoProtfolio']);
    _idMisSolicitudes = getDataList(snapshotData['idMisSolicitudes']);
    _chatActivo = snapshotData['chatActivo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? rol,
  bool? active,
  String? name,
  String? lastname,
  String? narea,
  String? tel,
  String? genero,
  String? pais,
  String? profesion,
  String? porcentaje,
  String? nombrerepresentante,
  String? nacimiento,
  LatLng? ubicacion,
  String? instagram,
  String? tiktok,
  String? twich,
  String? youtube,
  String? portfolio,
  bool? comercio,
  String? nombrecomercio,
  String? nombreyapellidodeencargado,
  String? rolcomercio,
  String? categoria,
  String? codigo,
  String? descripcion,
  bool? membershipActive,
  String? lastPaymentId,
  DateTime? paymentDate,
  String? typePayment,
  String? typeMembership,
  String? city,
  String? state,
  String? zipCode,
  String? address,
  String? facebook,
  String? webSite,
  String? fotoPerfilComercio,
  DateTime? calendario,
  String? idMembresia,
  int? cantidadInfluMemb,
  int? pagoMembresia,
  String? beneficio1Memb,
  String? beneficio2Memb,
  String? beneficio3Memb,
  bool? isInfluencer,
  bool? chatActivo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'rol': rol,
      'active': active,
      'name': name,
      'lastname': lastname,
      'narea': narea,
      'tel': tel,
      'genero': genero,
      'pais': pais,
      'profesion': profesion,
      'porcentaje': porcentaje,
      'nombrerepresentante': nombrerepresentante,
      'nacimiento': nacimiento,
      'ubicacion': ubicacion,
      'instagram': instagram,
      'tiktok': tiktok,
      'twich': twich,
      'youtube': youtube,
      'portfolio': portfolio,
      'comercio': comercio,
      'nombrecomercio': nombrecomercio,
      'nombreyapellidodeencargado': nombreyapellidodeencargado,
      'rolcomercio': rolcomercio,
      'categoria': categoria,
      'codigo': codigo,
      'descripcion': descripcion,
      'membershipActive': membershipActive,
      'lastPaymentId': lastPaymentId,
      'paymentDate': paymentDate,
      'typePayment': typePayment,
      'typeMembership': typeMembership,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'address': address,
      'facebook': facebook,
      'webSite': webSite,
      'fotoPerfilComercio': fotoPerfilComercio,
      'calendario': calendario,
      'idMembresia': idMembresia,
      'cantidadInfluMemb': cantidadInfluMemb,
      'pagoMembresia': pagoMembresia,
      'beneficio1Memb': beneficio1Memb,
      'beneficio2Memb': beneficio2Memb,
      'beneficio3Memb': beneficio3Memb,
      'isInfluencer': isInfluencer,
      'chatActivo': chatActivo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.rol == e2?.rol &&
        e1?.active == e2?.active &&
        e1?.name == e2?.name &&
        e1?.lastname == e2?.lastname &&
        e1?.narea == e2?.narea &&
        e1?.tel == e2?.tel &&
        e1?.genero == e2?.genero &&
        e1?.pais == e2?.pais &&
        e1?.profesion == e2?.profesion &&
        e1?.porcentaje == e2?.porcentaje &&
        e1?.nombrerepresentante == e2?.nombrerepresentante &&
        e1?.nacimiento == e2?.nacimiento &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.instagram == e2?.instagram &&
        e1?.tiktok == e2?.tiktok &&
        e1?.twich == e2?.twich &&
        e1?.youtube == e2?.youtube &&
        e1?.portfolio == e2?.portfolio &&
        e1?.comercio == e2?.comercio &&
        e1?.nombrecomercio == e2?.nombrecomercio &&
        e1?.nombreyapellidodeencargado == e2?.nombreyapellidodeencargado &&
        e1?.rolcomercio == e2?.rolcomercio &&
        e1?.categoria == e2?.categoria &&
        e1?.codigo == e2?.codigo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.membershipActive == e2?.membershipActive &&
        e1?.lastPaymentId == e2?.lastPaymentId &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.typePayment == e2?.typePayment &&
        e1?.typeMembership == e2?.typeMembership &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zipCode == e2?.zipCode &&
        e1?.address == e2?.address &&
        listEquality.equals(e1?.fotoComercio, e2?.fotoComercio) &&
        e1?.facebook == e2?.facebook &&
        e1?.webSite == e2?.webSite &&
        e1?.fotoPerfilComercio == e2?.fotoPerfilComercio &&
        e1?.calendario == e2?.calendario &&
        e1?.idMembresia == e2?.idMembresia &&
        e1?.cantidadInfluMemb == e2?.cantidadInfluMemb &&
        e1?.pagoMembresia == e2?.pagoMembresia &&
        e1?.beneficio1Memb == e2?.beneficio1Memb &&
        e1?.beneficio2Memb == e2?.beneficio2Memb &&
        e1?.beneficio3Memb == e2?.beneficio3Memb &&
        e1?.isInfluencer == e2?.isInfluencer &&
        listEquality.equals(e1?.idOfertasPropias, e2?.idOfertasPropias) &&
        listEquality.equals(e1?.fotoProtfolio, e2?.fotoProtfolio) &&
        listEquality.equals(e1?.idMisSolicitudes, e2?.idMisSolicitudes) &&
        e1?.chatActivo == e2?.chatActivo;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.rol,
        e?.active,
        e?.name,
        e?.lastname,
        e?.narea,
        e?.tel,
        e?.genero,
        e?.pais,
        e?.profesion,
        e?.porcentaje,
        e?.nombrerepresentante,
        e?.nacimiento,
        e?.ubicacion,
        e?.instagram,
        e?.tiktok,
        e?.twich,
        e?.youtube,
        e?.portfolio,
        e?.comercio,
        e?.nombrecomercio,
        e?.nombreyapellidodeencargado,
        e?.rolcomercio,
        e?.categoria,
        e?.codigo,
        e?.descripcion,
        e?.membershipActive,
        e?.lastPaymentId,
        e?.paymentDate,
        e?.typePayment,
        e?.typeMembership,
        e?.city,
        e?.state,
        e?.zipCode,
        e?.address,
        e?.fotoComercio,
        e?.facebook,
        e?.webSite,
        e?.fotoPerfilComercio,
        e?.calendario,
        e?.idMembresia,
        e?.cantidadInfluMemb,
        e?.pagoMembresia,
        e?.beneficio1Memb,
        e?.beneficio2Memb,
        e?.beneficio3Memb,
        e?.isInfluencer,
        e?.idOfertasPropias,
        e?.fotoProtfolio,
        e?.idMisSolicitudes,
        e?.chatActivo
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
