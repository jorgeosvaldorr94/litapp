import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OffersRecord extends FirestoreRecord {
  OffersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "schedule" field.
  String? _schedule;
  String get schedule => _schedule ?? '';
  bool hasSchedule() => _schedule != null;

  // "place_name" field.
  String? _placeName;
  String get placeName => _placeName ?? '';
  bool hasPlaceName() => _placeName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "linked" field.
  String? _linked;
  String get linked => _linked ?? '';
  bool hasLinked() => _linked != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "position" field.
  LatLng? _position;
  LatLng? get position => _position;
  bool hasPosition() => _position != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "campaing" field.
  String? _campaing;
  String get campaing => _campaing ?? '';
  bool hasCampaing() => _campaing != null;

  // "platform" field.
  String? _platform;
  String get platform => _platform ?? '';
  bool hasPlatform() => _platform != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "publications" field.
  String? _publications;
  String get publications => _publications ?? '';
  bool hasPublications() => _publications != null;

  // "creationDate" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  // "emailcreator" field.
  String? _emailcreator;
  String get emailcreator => _emailcreator ?? '';
  bool hasEmailcreator() => _emailcreator != null;

  // "eventDate" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "influencers" field.
  String? _influencers;
  String get influencers => _influencers ?? '';
  bool hasInfluencers() => _influencers != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "beneficio" field.
  String? _beneficio;
  String get beneficio => _beneficio ?? '';
  bool hasBeneficio() => _beneficio != null;

  // "idCreador" field.
  String? _idCreador;
  String get idCreador => _idCreador ?? '';
  bool hasIdCreador() => _idCreador != null;

  // "idInfluencerAcptados" field.
  List<String>? _idInfluencerAcptados;
  List<String> get idInfluencerAcptados => _idInfluencerAcptados ?? const [];
  bool hasIdInfluencerAcptados() => _idInfluencerAcptados != null;

  // "descripcionBeneficio" field.
  String? _descripcionBeneficio;
  String get descripcionBeneficio => _descripcionBeneficio ?? '';
  bool hasDescripcionBeneficio() => _descripcionBeneficio != null;

  // "descricionPropuesta" field.
  String? _descricionPropuesta;
  String get descricionPropuesta => _descricionPropuesta ?? '';
  bool hasDescricionPropuesta() => _descricionPropuesta != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _category = snapshotData['category'] as String?;
    _active = snapshotData['active'] as bool?;
    _name = snapshotData['name'] as String?;
    _schedule = snapshotData['schedule'] as String?;
    _placeName = snapshotData['place_name'] as String?;
    _image = snapshotData['image'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _linked = snapshotData['linked'] as String?;
    _description = snapshotData['description'] as String?;
    _position = snapshotData['position'] as LatLng?;
    _city = snapshotData['city'] as String?;
    _level = snapshotData['level'] as String?;
    _campaing = snapshotData['campaing'] as String?;
    _platform = snapshotData['platform'] as String?;
    _format = snapshotData['format'] as String?;
    _publications = snapshotData['publications'] as String?;
    _creationDate = snapshotData['creationDate'] as DateTime?;
    _emailcreator = snapshotData['emailcreator'] as String?;
    _eventDate = snapshotData['eventDate'] as DateTime?;
    _influencers = snapshotData['influencers'] as String?;
    _horario = snapshotData['horario'] as String?;
    _beneficio = snapshotData['beneficio'] as String?;
    _idCreador = snapshotData['idCreador'] as String?;
    _idInfluencerAcptados = getDataList(snapshotData['idInfluencerAcptados']);
    _descripcionBeneficio = snapshotData['descripcionBeneficio'] as String?;
    _descricionPropuesta = snapshotData['descricionPropuesta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offers');

  static Stream<OffersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OffersRecord.fromSnapshot(s));

  static Future<OffersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OffersRecord.fromSnapshot(s));

  static OffersRecord fromSnapshot(DocumentSnapshot snapshot) => OffersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OffersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OffersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OffersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OffersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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
  String? idCreador,
  String? descripcionBeneficio,
  String? descricionPropuesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'category': category,
      'active': active,
      'name': name,
      'schedule': schedule,
      'place_name': placeName,
      'image': image,
      'created_time': createdTime,
      'linked': linked,
      'description': description,
      'position': position,
      'city': city,
      'level': level,
      'campaing': campaing,
      'platform': platform,
      'format': format,
      'publications': publications,
      'creationDate': creationDate,
      'emailcreator': emailcreator,
      'eventDate': eventDate,
      'influencers': influencers,
      'horario': horario,
      'beneficio': beneficio,
      'idCreador': idCreador,
      'descripcionBeneficio': descripcionBeneficio,
      'descricionPropuesta': descricionPropuesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class OffersRecordDocumentEquality implements Equality<OffersRecord> {
  const OffersRecordDocumentEquality();

  @override
  bool equals(OffersRecord? e1, OffersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.category == e2?.category &&
        e1?.active == e2?.active &&
        e1?.name == e2?.name &&
        e1?.schedule == e2?.schedule &&
        e1?.placeName == e2?.placeName &&
        e1?.image == e2?.image &&
        e1?.createdTime == e2?.createdTime &&
        e1?.linked == e2?.linked &&
        e1?.description == e2?.description &&
        e1?.position == e2?.position &&
        e1?.city == e2?.city &&
        e1?.level == e2?.level &&
        e1?.campaing == e2?.campaing &&
        e1?.platform == e2?.platform &&
        e1?.format == e2?.format &&
        e1?.publications == e2?.publications &&
        e1?.creationDate == e2?.creationDate &&
        e1?.emailcreator == e2?.emailcreator &&
        e1?.eventDate == e2?.eventDate &&
        e1?.influencers == e2?.influencers &&
        e1?.horario == e2?.horario &&
        e1?.beneficio == e2?.beneficio &&
        e1?.idCreador == e2?.idCreador &&
        listEquality.equals(
            e1?.idInfluencerAcptados, e2?.idInfluencerAcptados) &&
        e1?.descripcionBeneficio == e2?.descripcionBeneficio &&
        e1?.descricionPropuesta == e2?.descricionPropuesta;
  }

  @override
  int hash(OffersRecord? e) => const ListEquality().hash([
        e?.id,
        e?.category,
        e?.active,
        e?.name,
        e?.schedule,
        e?.placeName,
        e?.image,
        e?.createdTime,
        e?.linked,
        e?.description,
        e?.position,
        e?.city,
        e?.level,
        e?.campaing,
        e?.platform,
        e?.format,
        e?.publications,
        e?.creationDate,
        e?.emailcreator,
        e?.eventDate,
        e?.influencers,
        e?.horario,
        e?.beneficio,
        e?.idCreador,
        e?.idInfluencerAcptados,
        e?.descripcionBeneficio,
        e?.descricionPropuesta
      ]);

  @override
  bool isValidKey(Object? o) => o is OffersRecord;
}
