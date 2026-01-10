import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnalyticsRecord extends FirestoreRecord {
  AnalyticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "analytics_id" field.
  String? _analyticsId;
  String get analyticsId => _analyticsId ?? '';
  bool hasAnalyticsId() => _analyticsId != null;

  // "num_of_properties" field.
  int? _numOfProperties;
  int get numOfProperties => _numOfProperties ?? 0;
  bool hasNumOfProperties() => _numOfProperties != null;

  // "num_of_portfolio" field.
  int? _numOfPortfolio;
  int get numOfPortfolio => _numOfPortfolio ?? 0;
  bool hasNumOfPortfolio() => _numOfPortfolio != null;

  // "num_of_rooms" field.
  int? _numOfRooms;
  int get numOfRooms => _numOfRooms ?? 0;
  bool hasNumOfRooms() => _numOfRooms != null;

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  void _initializeFields() {
    _analyticsId = snapshotData['analytics_id'] as String?;
    _numOfProperties = castToType<int>(snapshotData['num_of_properties']);
    _numOfPortfolio = castToType<int>(snapshotData['num_of_portfolio']);
    _numOfRooms = castToType<int>(snapshotData['num_of_rooms']);
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('analytics');

  static Stream<AnalyticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnalyticsRecord.fromSnapshot(s));

  static Future<AnalyticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnalyticsRecord.fromSnapshot(s));

  static AnalyticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnalyticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnalyticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnalyticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnalyticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnalyticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnalyticsRecordData({
  String? analyticsId,
  int? numOfProperties,
  int? numOfPortfolio,
  int? numOfRooms,
  DocumentReference? landlordId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'analytics_id': analyticsId,
      'num_of_properties': numOfProperties,
      'num_of_portfolio': numOfPortfolio,
      'num_of_rooms': numOfRooms,
      'landlord_id': landlordId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnalyticsRecordDocumentEquality implements Equality<AnalyticsRecord> {
  const AnalyticsRecordDocumentEquality();

  @override
  bool equals(AnalyticsRecord? e1, AnalyticsRecord? e2) {
    return e1?.analyticsId == e2?.analyticsId &&
        e1?.numOfProperties == e2?.numOfProperties &&
        e1?.numOfPortfolio == e2?.numOfPortfolio &&
        e1?.numOfRooms == e2?.numOfRooms &&
        e1?.landlordId == e2?.landlordId;
  }

  @override
  int hash(AnalyticsRecord? e) => const ListEquality().hash([
        e?.analyticsId,
        e?.numOfProperties,
        e?.numOfPortfolio,
        e?.numOfRooms,
        e?.landlordId
      ]);

  @override
  bool isValidKey(Object? o) => o is AnalyticsRecord;
}
