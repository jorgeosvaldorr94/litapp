import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get rol;

  bool? get active;

  String? get name;

  String? get lastname;

  String? get narea;

  String? get tel;

  String? get genero;

  String? get pais;

  String? get profesion;

  String? get porcentaje;

  String? get nombrerepresentante;

  String? get nacimiento;

  LatLng? get ubicacion;

  String? get instagram;

  String? get tiktok;

  String? get twich;

  String? get youtube;

  String? get portfolio;

  bool? get comercio;

  String? get nombrecomercio;

  String? get nombreyapellidodeencargado;

  String? get rolcomercio;

  String? get categoria;

  String? get codigo;

  String? get descripcion;

  bool? get membershipActive;

  String? get lastPaymentId;

  DateTime? get paymentDate;

  String? get typePayment;

  String? get typeMembership;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..rol = ''
    ..active = false
    ..name = ''
    ..lastname = ''
    ..narea = ''
    ..tel = ''
    ..genero = ''
    ..pais = ''
    ..profesion = ''
    ..porcentaje = ''
    ..nombrerepresentante = ''
    ..nacimiento = ''
    ..instagram = ''
    ..tiktok = ''
    ..twich = ''
    ..youtube = ''
    ..portfolio = ''
    ..comercio = false
    ..nombrecomercio = ''
    ..nombreyapellidodeencargado = ''
    ..rolcomercio = ''
    ..categoria = ''
    ..codigo = ''
    ..descripcion = ''
    ..membershipActive = false
    ..lastPaymentId = ''
    ..typePayment = ''
    ..typeMembership = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static CollectionReference collectionUser =
      FirebaseFirestore.instance.collection('users');
  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
   
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
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..rol = rol
        ..active = active
        ..name = name
        ..lastname = lastname
        ..narea = narea
        ..tel = tel
        ..genero = genero
        ..pais = pais
        ..profesion = profesion
        ..porcentaje = porcentaje
        ..nombrerepresentante = nombrerepresentante
        ..nacimiento = nacimiento
        ..ubicacion = ubicacion
        ..instagram = instagram
        ..tiktok = tiktok
        ..twich = twich
        ..youtube = youtube
        ..portfolio = portfolio
        ..comercio = comercio
        ..nombrecomercio = nombrecomercio
        ..nombreyapellidodeencargado = nombreyapellidodeencargado
        ..rolcomercio = rolcomercio
        ..categoria = categoria
        ..codigo = codigo
        ..descripcion = descripcion
        ..membershipActive = membershipActive
        ..lastPaymentId = lastPaymentId
        ..paymentDate = paymentDate
        ..typePayment = typePayment
        ..typeMembership = typeMembership,
    ),
  );

  return firestoreData;
}
