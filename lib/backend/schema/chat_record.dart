import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRecord extends FirestoreRecord {
  ChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "lastMessage" field.
  DocumentReference? _lastMessage;
  DocumentReference? get lastMessage => _lastMessage;
  bool hasLastMessage() => _lastMessage != null;

  // "idUser" field.
  DocumentReference? _idUser;
  DocumentReference? get idUser => _idUser;
  bool hasIdUser() => _idUser != null;

  // "adminID" field.
  String? _adminID;
  String get adminID => _adminID ?? '';
  bool hasAdminID() => _adminID != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "lastMessageTime" field.
  List<DateTime>? _lastMessageTime;
  List<DateTime> get lastMessageTime => _lastMessageTime ?? const [];
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "idSend" field.
  String? _idSend;
  String get idSend => _idSend ?? '';
  bool hasIdSend() => _idSend != null;

  // "fotoUser" field.
  String? _fotoUser;
  String get fotoUser => _fotoUser ?? '';
  bool hasFotoUser() => _fotoUser != null;

  // "idReceive" field.
  String? _idReceive;
  String get idReceive => _idReceive ?? '';
  bool hasIdReceive() => _idReceive != null;

  // "emailSend" field.
  String? _emailSend;
  String get emailSend => _emailSend ?? '';
  bool hasEmailSend() => _emailSend != null;

  // "emailReceive" field.
  String? _emailReceive;
  String get emailReceive => _emailReceive ?? '';
  bool hasEmailReceive() => _emailReceive != null;

  // "emailsUsersList" field.
  List<String>? _emailsUsersList;
  List<String> get emailsUsersList => _emailsUsersList ?? const [];
  bool hasEmailsUsersList() => _emailsUsersList != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _lastMessage = snapshotData['lastMessage'] as DocumentReference?;
    _idUser = snapshotData['idUser'] as DocumentReference?;
    _adminID = snapshotData['adminID'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _lastMessageTime = getDataList(snapshotData['lastMessageTime']);
    _idSend = snapshotData['idSend'] as String?;
    _fotoUser = snapshotData['fotoUser'] as String?;
    _idReceive = snapshotData['idReceive'] as String?;
    _emailSend = snapshotData['emailSend'] as String?;
    _emailReceive = snapshotData['emailReceive'] as String?;
    _emailsUsersList = getDataList(snapshotData['emailsUsersList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat');

  static Stream<ChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRecord.fromSnapshot(s));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRecord.fromSnapshot(s));

  static ChatRecord fromSnapshot(DocumentSnapshot snapshot) => ChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRecordData({
  String? name,
  DocumentReference? lastMessage,
  DocumentReference? idUser,
  String? adminID,
  DateTime? createdTime,
  String? idSend,
  String? fotoUser,
  String? idReceive,
  String? emailSend,
  String? emailReceive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'lastMessage': lastMessage,
      'idUser': idUser,
      'adminID': adminID,
      'createdTime': createdTime,
      'idSend': idSend,
      'fotoUser': fotoUser,
      'idReceive': idReceive,
      'emailSend': emailSend,
      'emailReceive': emailReceive,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRecordDocumentEquality implements Equality<ChatRecord> {
  const ChatRecordDocumentEquality();

  @override
  bool equals(ChatRecord? e1, ChatRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.idUser == e2?.idUser &&
        e1?.adminID == e2?.adminID &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.lastMessageTime, e2?.lastMessageTime) &&
        e1?.idSend == e2?.idSend &&
        e1?.fotoUser == e2?.fotoUser &&
        e1?.idReceive == e2?.idReceive &&
        e1?.emailSend == e2?.emailSend &&
        e1?.emailReceive == e2?.emailReceive &&
        listEquality.equals(e1?.emailsUsersList, e2?.emailsUsersList);
  }

  @override
  int hash(ChatRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lastMessage,
        e?.idUser,
        e?.adminID,
        e?.createdTime,
        e?.lastMessageTime,
        e?.idSend,
        e?.fotoUser,
        e?.idReceive,
        e?.emailSend,
        e?.emailReceive,
        e?.emailsUsersList
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatRecord;
}
