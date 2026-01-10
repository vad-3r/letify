import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipOffsRecord extends FirestoreRecord {
  TipOffsRecord._(
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

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "property_name" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "tipoff_id" field.
  String? _tipoffId;
  String get tipoffId => _tipoffId ?? '';
  bool hasTipoffId() => _tipoffId != null;

  // "opened" field.
  bool? _opened;
  bool get opened => _opened ?? false;
  bool hasOpened() => _opened != null;

  void _initializeFields() {
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _propertyName = snapshotData['property_name'] as String?;
    _tipoffId = snapshotData['tipoff_id'] as String?;
    _opened = snapshotData['opened'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tip_offs');

  static Stream<TipOffsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipOffsRecord.fromSnapshot(s));

  static Future<TipOffsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipOffsRecord.fromSnapshot(s));

  static TipOffsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipOffsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipOffsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipOffsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipOffsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipOffsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipOffsRecordData({
  DocumentReference? landlordId,
  DocumentReference? propertyId,
  String? message,
  DateTime? timestamp,
  String? propertyName,
  String? tipoffId,
  bool? opened,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'landlord_id': landlordId,
      'property_id': propertyId,
      'message': message,
      'timestamp': timestamp,
      'property_name': propertyName,
      'tipoff_id': tipoffId,
      'opened': opened,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipOffsRecordDocumentEquality implements Equality<TipOffsRecord> {
  const TipOffsRecordDocumentEquality();

  @override
  bool equals(TipOffsRecord? e1, TipOffsRecord? e2) {
    return e1?.landlordId == e2?.landlordId &&
        e1?.propertyId == e2?.propertyId &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.propertyName == e2?.propertyName &&
        e1?.tipoffId == e2?.tipoffId &&
        e1?.opened == e2?.opened;
  }

  @override
  int hash(TipOffsRecord? e) => const ListEquality().hash([
        e?.landlordId,
        e?.propertyId,
        e?.message,
        e?.timestamp,
        e?.propertyName,
        e?.tipoffId,
        e?.opened
      ]);

  @override
  bool isValidKey(Object? o) => o is TipOffsRecord;
}
