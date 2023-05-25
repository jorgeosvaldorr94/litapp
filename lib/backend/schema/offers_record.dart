import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'offers_record.g.dart';

abstract class OffersRecord
    implements Built<OffersRecord, OffersRecordBuilder> {
  static Serializer<OffersRecord> get serializer => _$offersRecordSerializer;

  String? get id;

  String? get category;

  bool? get active;

  String? get name;

  String? get schedule;

  @BuiltValueField(wireName: 'place_name')
  String? get placeName;

  String? get image;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get linked;

  String? get description;

  LatLng? get position;

  String? get city;

  String? get level;

  String? get campaing;

  String? get platform;

  String? get format;

  String? get publications;

  DateTime? get creationDate;

  String? get emailcreator;

  DateTime? get eventDate;

  String? get influencers;

  String? get horario;

  String? get beneficio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OffersRecordBuilder builder) => builder
    ..id = ''
    ..category = ''
    ..active = false
    ..name = ''
    ..schedule = ''
    ..placeName = ''
    ..image = ''
    ..linked = ''
    ..description = ''
    ..city = ''
    ..level = ''
    ..campaing = ''
    ..platform = ''
    ..format = ''
    ..publications = ''
    ..emailcreator = ''
    ..influencers = ''
    ..horario = ''
    ..beneficio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offers');

  static Stream<OffersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OffersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OffersRecord._();
  factory OffersRecord([void Function(OffersRecordBuilder) updates]) =
      _$OffersRecord;

  static OffersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOffersRecordData({
  String? id,
  String? category,
  bool? active,
  String? name,
  String? schedule,
  String? placeName,
  String? image,
  DateTime? createdTime,
  String? linked,
  String? description,
  LatLng? position,
  String? city,
  String? level,
  String? campaing,
  String? platform,
  String? format,
  String? publications,
  DateTime? creationDate,
  String? emailcreator,
  DateTime? eventDate,
  String? influencers,
  String? horario,
  String? beneficio,
}) {
  final firestoreData = serializers.toFirestore(
    OffersRecord.serializer,
    OffersRecord(
      (o) => o
        ..id = id
        ..category = category
        ..active = active
        ..name = name
        ..schedule = schedule
        ..placeName = placeName
        ..image = image
        ..createdTime = createdTime
        ..linked = linked
        ..description = description
        ..position = position
        ..city = city
        ..level = level
        ..campaing = campaing
        ..platform = platform
        ..format = format
        ..publications = publications
        ..creationDate = creationDate
        ..emailcreator = emailcreator
        ..eventDate = eventDate
        ..influencers = influencers
        ..horario = horario
        ..beneficio = beneficio,
    ),
  );

  return firestoreData;
}
