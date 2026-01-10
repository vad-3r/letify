import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArchivedTenantsRecord extends FirestoreRecord {
  ArchivedTenantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "room_id" field.
  DocumentReference? _roomId;
  DocumentReference? get roomId => _roomId;
  bool hasRoomId() => _roomId != null;

  // "tenant_name" field.
  String? _tenantName;
  String get tenantName => _tenantName ?? '';
  bool hasTenantName() => _tenantName != null;

  // "tenant_surname" field.
  String? _tenantSurname;
  String get tenantSurname => _tenantSurname ?? '';
  bool hasTenantSurname() => _tenantSurname != null;

  // "room_index" field.
  int? _roomIndex;
  int get roomIndex => _roomIndex ?? 0;
  bool hasRoomIndex() => _roomIndex != null;

  // "room_name" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  bool hasRoomName() => _roomName != null;

  // "tenant_id" field.
  DocumentReference? _tenantId;
  DocumentReference? get tenantId => _tenantId;
  bool hasTenantId() => _tenantId != null;

  // "tenant_student_num" field.
  String? _tenantStudentNum;
  String get tenantStudentNum => _tenantStudentNum ?? '';
  bool hasTenantStudentNum() => _tenantStudentNum != null;

  // "tenant_id_num" field.
  String? _tenantIdNum;
  String get tenantIdNum => _tenantIdNum ?? '';
  bool hasTenantIdNum() => _tenantIdNum != null;

  // "archive_reason" field.
  String? _archiveReason;
  String get archiveReason => _archiveReason ?? '';
  bool hasArchiveReason() => _archiveReason != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  void _initializeFields() {
    _roomId = snapshotData['room_id'] as DocumentReference?;
    _tenantName = snapshotData['tenant_name'] as String?;
    _tenantSurname = snapshotData['tenant_surname'] as String?;
    _roomIndex = castToType<int>(snapshotData['room_index']);
    _roomName = snapshotData['room_name'] as String?;
    _tenantId = snapshotData['tenant_id'] as DocumentReference?;
    _tenantStudentNum = snapshotData['tenant_student_num'] as String?;
    _tenantIdNum = snapshotData['tenant_id_num'] as String?;
    _archiveReason = snapshotData['archive_reason'] as String?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Archived_Tenants');

  static Stream<ArchivedTenantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArchivedTenantsRecord.fromSnapshot(s));

  static Future<ArchivedTenantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArchivedTenantsRecord.fromSnapshot(s));

  static ArchivedTenantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArchivedTenantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArchivedTenantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArchivedTenantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArchivedTenantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArchivedTenantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArchivedTenantsRecordData({
  DocumentReference? roomId,
  String? tenantName,
  String? tenantSurname,
  int? roomIndex,
  String? roomName,
  DocumentReference? tenantId,
  String? tenantStudentNum,
  String? tenantIdNum,
  String? archiveReason,
  DocumentReference? propertyId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'room_id': roomId,
      'tenant_name': tenantName,
      'tenant_surname': tenantSurname,
      'room_index': roomIndex,
      'room_name': roomName,
      'tenant_id': tenantId,
      'tenant_student_num': tenantStudentNum,
      'tenant_id_num': tenantIdNum,
      'archive_reason': archiveReason,
      'property_id': propertyId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArchivedTenantsRecordDocumentEquality
    implements Equality<ArchivedTenantsRecord> {
  const ArchivedTenantsRecordDocumentEquality();

  @override
  bool equals(ArchivedTenantsRecord? e1, ArchivedTenantsRecord? e2) {
    return e1?.roomId == e2?.roomId &&
        e1?.tenantName == e2?.tenantName &&
        e1?.tenantSurname == e2?.tenantSurname &&
        e1?.roomIndex == e2?.roomIndex &&
        e1?.roomName == e2?.roomName &&
        e1?.tenantId == e2?.tenantId &&
        e1?.tenantStudentNum == e2?.tenantStudentNum &&
        e1?.tenantIdNum == e2?.tenantIdNum &&
        e1?.archiveReason == e2?.archiveReason &&
        e1?.propertyId == e2?.propertyId;
  }

  @override
  int hash(ArchivedTenantsRecord? e) => const ListEquality().hash([
        e?.roomId,
        e?.tenantName,
        e?.tenantSurname,
        e?.roomIndex,
        e?.roomName,
        e?.tenantId,
        e?.tenantStudentNum,
        e?.tenantIdNum,
        e?.archiveReason,
        e?.propertyId
      ]);

  @override
  bool isValidKey(Object? o) => o is ArchivedTenantsRecord;
}
