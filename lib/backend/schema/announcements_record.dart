import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnouncementsRecord extends FirestoreRecord {
  AnnouncementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "announcement_id" field.
  String? _announcementId;
  String get announcementId => _announcementId ?? '';
  bool hasAnnouncementId() => _announcementId != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "announcement_title" field.
  String? _announcementTitle;
  String get announcementTitle => _announcementTitle ?? '';
  bool hasAnnouncementTitle() => _announcementTitle != null;

  // "announcement_message" field.
  String? _announcementMessage;
  String get announcementMessage => _announcementMessage ?? '';
  bool hasAnnouncementMessage() => _announcementMessage != null;

  // "announcement_timestamp" field.
  DateTime? _announcementTimestamp;
  DateTime? get announcementTimestamp => _announcementTimestamp;
  bool hasAnnouncementTimestamp() => _announcementTimestamp != null;

  void _initializeFields() {
    _announcementId = snapshotData['announcement_id'] as String?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _announcementTitle = snapshotData['announcement_title'] as String?;
    _announcementMessage = snapshotData['announcement_message'] as String?;
    _announcementTimestamp =
        snapshotData['announcement_timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Announcements');

  static Stream<AnnouncementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnouncementsRecord.fromSnapshot(s));

  static Future<AnnouncementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnouncementsRecord.fromSnapshot(s));

  static AnnouncementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnouncementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnouncementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnouncementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnouncementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnouncementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnouncementsRecordData({
  String? announcementId,
  DocumentReference? propertyId,
  String? announcementTitle,
  String? announcementMessage,
  DateTime? announcementTimestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'announcement_id': announcementId,
      'property_id': propertyId,
      'announcement_title': announcementTitle,
      'announcement_message': announcementMessage,
      'announcement_timestamp': announcementTimestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnouncementsRecordDocumentEquality
    implements Equality<AnnouncementsRecord> {
  const AnnouncementsRecordDocumentEquality();

  @override
  bool equals(AnnouncementsRecord? e1, AnnouncementsRecord? e2) {
    return e1?.announcementId == e2?.announcementId &&
        e1?.propertyId == e2?.propertyId &&
        e1?.announcementTitle == e2?.announcementTitle &&
        e1?.announcementMessage == e2?.announcementMessage &&
        e1?.announcementTimestamp == e2?.announcementTimestamp;
  }

  @override
  int hash(AnnouncementsRecord? e) => const ListEquality().hash([
        e?.announcementId,
        e?.propertyId,
        e?.announcementTitle,
        e?.announcementMessage,
        e?.announcementTimestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is AnnouncementsRecord;
}
