import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrelinkedTenantsRecord extends FirestoreRecord {
  PrelinkedTenantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "studentNumber" field.
  String? _studentNumber;
  String get studentNumber => _studentNumber ?? '';
  bool hasStudentNumber() => _studentNumber != null;

  // "propertyID" field.
  DocumentReference? _propertyID;
  DocumentReference? get propertyID => _propertyID;
  bool hasPropertyID() => _propertyID != null;

  // "roomID" field.
  DocumentReference? _roomID;
  DocumentReference? get roomID => _roomID;
  bool hasRoomID() => _roomID != null;

  // "isRegistered" field.
  bool? _isRegistered;
  bool get isRegistered => _isRegistered ?? false;
  bool hasIsRegistered() => _isRegistered != null;

  // "property_name" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "room_name" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  bool hasRoomName() => _roomName != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "contractID" field.
  DocumentReference? _contractID;
  DocumentReference? get contractID => _contractID;
  bool hasContractID() => _contractID != null;

  void _initializeFields() {
    _studentNumber = snapshotData['studentNumber'] as String?;
    _propertyID = snapshotData['propertyID'] as DocumentReference?;
    _roomID = snapshotData['roomID'] as DocumentReference?;
    _isRegistered = snapshotData['isRegistered'] as bool?;
    _propertyName = snapshotData['property_name'] as String?;
    _roomName = snapshotData['room_name'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _contractID = snapshotData['contractID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Prelinked_Tenants');

  static Stream<PrelinkedTenantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrelinkedTenantsRecord.fromSnapshot(s));

  static Future<PrelinkedTenantsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PrelinkedTenantsRecord.fromSnapshot(s));

  static PrelinkedTenantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrelinkedTenantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrelinkedTenantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrelinkedTenantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrelinkedTenantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrelinkedTenantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrelinkedTenantsRecordData({
  String? studentNumber,
  DocumentReference? propertyID,
  DocumentReference? roomID,
  bool? isRegistered,
  String? propertyName,
  String? roomName,
  DocumentReference? owner,
  DocumentReference? contractID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'studentNumber': studentNumber,
      'propertyID': propertyID,
      'roomID': roomID,
      'isRegistered': isRegistered,
      'property_name': propertyName,
      'room_name': roomName,
      'owner': owner,
      'contractID': contractID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrelinkedTenantsRecordDocumentEquality
    implements Equality<PrelinkedTenantsRecord> {
  const PrelinkedTenantsRecordDocumentEquality();

  @override
  bool equals(PrelinkedTenantsRecord? e1, PrelinkedTenantsRecord? e2) {
    return e1?.studentNumber == e2?.studentNumber &&
        e1?.propertyID == e2?.propertyID &&
        e1?.roomID == e2?.roomID &&
        e1?.isRegistered == e2?.isRegistered &&
        e1?.propertyName == e2?.propertyName &&
        e1?.roomName == e2?.roomName &&
        e1?.owner == e2?.owner &&
        e1?.contractID == e2?.contractID;
  }

  @override
  int hash(PrelinkedTenantsRecord? e) => const ListEquality().hash([
        e?.studentNumber,
        e?.propertyID,
        e?.roomID,
        e?.isRegistered,
        e?.propertyName,
        e?.roomName,
        e?.owner,
        e?.contractID
      ]);

  @override
  bool isValidKey(Object? o) => o is PrelinkedTenantsRecord;
}
