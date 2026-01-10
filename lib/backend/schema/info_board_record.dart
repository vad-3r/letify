import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfoBoardRecord extends FirestoreRecord {
  InfoBoardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "is_important" field.
  bool? _isImportant;
  bool get isImportant => _isImportant ?? false;
  bool hasIsImportant() => _isImportant != null;

  // "infoboard_id" field.
  String? _infoboardId;
  String get infoboardId => _infoboardId ?? '';
  bool hasInfoboardId() => _infoboardId != null;

  // "property_name" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "audience" field.
  List<DocumentReference>? _audience;
  List<DocumentReference> get audience => _audience ?? const [];
  bool hasAudience() => _audience != null;

  // "unread_list" field.
  List<DocumentReference>? _unreadList;
  List<DocumentReference> get unreadList => _unreadList ?? const [];
  bool hasUnreadList() => _unreadList != null;

  void _initializeFields() {
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _isImportant = snapshotData['is_important'] as bool?;
    _infoboardId = snapshotData['infoboard_id'] as String?;
    _propertyName = snapshotData['property_name'] as String?;
    _video = snapshotData['video'] as String?;
    _audience = getDataList(snapshotData['audience']);
    _unreadList = getDataList(snapshotData['unread_list']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('InfoBoard');

  static Stream<InfoBoardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InfoBoardRecord.fromSnapshot(s));

  static Future<InfoBoardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InfoBoardRecord.fromSnapshot(s));

  static InfoBoardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InfoBoardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InfoBoardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InfoBoardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InfoBoardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InfoBoardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInfoBoardRecordData({
  DocumentReference? landlordId,
  DocumentReference? propertyId,
  String? title,
  String? message,
  DateTime? timestamp,
  bool? isImportant,
  String? infoboardId,
  String? propertyName,
  String? video,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'landlord_id': landlordId,
      'property_id': propertyId,
      'title': title,
      'message': message,
      'timestamp': timestamp,
      'is_important': isImportant,
      'infoboard_id': infoboardId,
      'property_name': propertyName,
      'video': video,
    }.withoutNulls,
  );

  return firestoreData;
}

class InfoBoardRecordDocumentEquality implements Equality<InfoBoardRecord> {
  const InfoBoardRecordDocumentEquality();

  @override
  bool equals(InfoBoardRecord? e1, InfoBoardRecord? e2) {
    const listEquality = ListEquality();
    return e1?.landlordId == e2?.landlordId &&
        e1?.propertyId == e2?.propertyId &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.isImportant == e2?.isImportant &&
        e1?.infoboardId == e2?.infoboardId &&
        e1?.propertyName == e2?.propertyName &&
        e1?.video == e2?.video &&
        listEquality.equals(e1?.audience, e2?.audience) &&
        listEquality.equals(e1?.unreadList, e2?.unreadList);
  }

  @override
  int hash(InfoBoardRecord? e) => const ListEquality().hash([
        e?.landlordId,
        e?.propertyId,
        e?.title,
        e?.message,
        e?.timestamp,
        e?.isImportant,
        e?.infoboardId,
        e?.propertyName,
        e?.video,
        e?.audience,
        e?.unreadList
      ]);

  @override
  bool isValidKey(Object? o) => o is InfoBoardRecord;
}
