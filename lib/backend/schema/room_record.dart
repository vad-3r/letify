import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomRecord extends FirestoreRecord {
  RoomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "room_id" field.
  String? _roomId;
  String get roomId => _roomId ?? '';
  bool hasRoomId() => _roomId != null;

  // "room_description" field.
  String? _roomDescription;
  String get roomDescription => _roomDescription ?? '';
  bool hasRoomDescription() => _roomDescription != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "room_name" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  bool hasRoomName() => _roomName != null;

  // "room_status" field.
  String? _roomStatus;
  String get roomStatus => _roomStatus ?? '';
  bool hasRoomStatus() => _roomStatus != null;

  // "room_rent" field.
  double? _roomRent;
  double get roomRent => _roomRent ?? 0.0;
  bool hasRoomRent() => _roomRent != null;

  // "room_type" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  // "tenantInRoom" field.
  DocumentReference? _tenantInRoom;
  DocumentReference? get tenantInRoom => _tenantInRoom;
  bool hasTenantInRoom() => _tenantInRoom != null;

  // "tenant_name" field.
  String? _tenantName;
  String get tenantName => _tenantName ?? '';
  bool hasTenantName() => _tenantName != null;

  // "isGenerated" field.
  bool? _isGenerated;
  bool get isGenerated => _isGenerated ?? false;
  bool hasIsGenerated() => _isGenerated != null;

  // "room_index" field.
  int? _roomIndex;
  int get roomIndex => _roomIndex ?? 0;
  bool hasRoomIndex() => _roomIndex != null;

  // "tenant_student_num" field.
  String? _tenantStudentNum;
  String get tenantStudentNum => _tenantStudentNum ?? '';
  bool hasTenantStudentNum() => _tenantStudentNum != null;

  // "tenant_surname" field.
  String? _tenantSurname;
  String get tenantSurname => _tenantSurname ?? '';
  bool hasTenantSurname() => _tenantSurname != null;

  // "isSigned" field.
  bool? _isSigned;
  bool get isSigned => _isSigned ?? false;
  bool hasIsSigned() => _isSigned != null;

  // "isUploaded" field.
  bool? _isUploaded;
  bool get isUploaded => _isUploaded ?? false;
  bool hasIsUploaded() => _isUploaded != null;

  // "fully_booked" field.
  bool? _fullyBooked;
  bool get fullyBooked => _fullyBooked ?? false;
  bool hasFullyBooked() => _fullyBooked != null;

  // "new_link_timestamp" field.
  DateTime? _newLinkTimestamp;
  DateTime? get newLinkTimestamp => _newLinkTimestamp;
  bool hasNewLinkTimestamp() => _newLinkTimestamp != null;

  // "last_link_timestamp" field.
  DateTime? _lastLinkTimestamp;
  DateTime? get lastLinkTimestamp => _lastLinkTimestamp;
  bool hasLastLinkTimestamp() => _lastLinkTimestamp != null;

  void _initializeFields() {
    _roomId = snapshotData['room_id'] as String?;
    _roomDescription = snapshotData['room_description'] as String?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _roomName = snapshotData['room_name'] as String?;
    _roomStatus = snapshotData['room_status'] as String?;
    _roomRent = castToType<double>(snapshotData['room_rent']);
    _roomType = snapshotData['room_type'] as String?;
    _tenantInRoom = snapshotData['tenantInRoom'] as DocumentReference?;
    _tenantName = snapshotData['tenant_name'] as String?;
    _isGenerated = snapshotData['isGenerated'] as bool?;
    _roomIndex = castToType<int>(snapshotData['room_index']);
    _tenantStudentNum = snapshotData['tenant_student_num'] as String?;
    _tenantSurname = snapshotData['tenant_surname'] as String?;
    _isSigned = snapshotData['isSigned'] as bool?;
    _isUploaded = snapshotData['isUploaded'] as bool?;
    _fullyBooked = snapshotData['fully_booked'] as bool?;
    _newLinkTimestamp = snapshotData['new_link_timestamp'] as DateTime?;
    _lastLinkTimestamp = snapshotData['last_link_timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Room');

  static Stream<RoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomRecord.fromSnapshot(s));

  static Future<RoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomRecord.fromSnapshot(s));

  static RoomRecord fromSnapshot(DocumentSnapshot snapshot) => RoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomRecordData({
  String? roomId,
  String? roomDescription,
  DocumentReference? propertyId,
  String? roomName,
  String? roomStatus,
  double? roomRent,
  String? roomType,
  DocumentReference? tenantInRoom,
  String? tenantName,
  bool? isGenerated,
  int? roomIndex,
  String? tenantStudentNum,
  String? tenantSurname,
  bool? isSigned,
  bool? isUploaded,
  bool? fullyBooked,
  DateTime? newLinkTimestamp,
  DateTime? lastLinkTimestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'room_id': roomId,
      'room_description': roomDescription,
      'property_id': propertyId,
      'room_name': roomName,
      'room_status': roomStatus,
      'room_rent': roomRent,
      'room_type': roomType,
      'tenantInRoom': tenantInRoom,
      'tenant_name': tenantName,
      'isGenerated': isGenerated,
      'room_index': roomIndex,
      'tenant_student_num': tenantStudentNum,
      'tenant_surname': tenantSurname,
      'isSigned': isSigned,
      'isUploaded': isUploaded,
      'fully_booked': fullyBooked,
      'new_link_timestamp': newLinkTimestamp,
      'last_link_timestamp': lastLinkTimestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomRecordDocumentEquality implements Equality<RoomRecord> {
  const RoomRecordDocumentEquality();

  @override
  bool equals(RoomRecord? e1, RoomRecord? e2) {
    return e1?.roomId == e2?.roomId &&
        e1?.roomDescription == e2?.roomDescription &&
        e1?.propertyId == e2?.propertyId &&
        e1?.roomName == e2?.roomName &&
        e1?.roomStatus == e2?.roomStatus &&
        e1?.roomRent == e2?.roomRent &&
        e1?.roomType == e2?.roomType &&
        e1?.tenantInRoom == e2?.tenantInRoom &&
        e1?.tenantName == e2?.tenantName &&
        e1?.isGenerated == e2?.isGenerated &&
        e1?.roomIndex == e2?.roomIndex &&
        e1?.tenantStudentNum == e2?.tenantStudentNum &&
        e1?.tenantSurname == e2?.tenantSurname &&
        e1?.isSigned == e2?.isSigned &&
        e1?.isUploaded == e2?.isUploaded &&
        e1?.fullyBooked == e2?.fullyBooked &&
        e1?.newLinkTimestamp == e2?.newLinkTimestamp &&
        e1?.lastLinkTimestamp == e2?.lastLinkTimestamp;
  }

  @override
  int hash(RoomRecord? e) => const ListEquality().hash([
        e?.roomId,
        e?.roomDescription,
        e?.propertyId,
        e?.roomName,
        e?.roomStatus,
        e?.roomRent,
        e?.roomType,
        e?.tenantInRoom,
        e?.tenantName,
        e?.isGenerated,
        e?.roomIndex,
        e?.tenantStudentNum,
        e?.tenantSurname,
        e?.isSigned,
        e?.isUploaded,
        e?.fullyBooked,
        e?.newLinkTimestamp,
        e?.lastLinkTimestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomRecord;
}
