import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PanicButtonAlertRecord extends FirestoreRecord {
  PanicButtonAlertRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "triggered_by" field.
  DocumentReference? _triggeredBy;
  DocumentReference? get triggeredBy => _triggeredBy;
  bool hasTriggeredBy() => _triggeredBy != null;

  // "alert_location" field.
  LatLng? _alertLocation;
  LatLng? get alertLocation => _alertLocation;
  bool hasAlertLocation() => _alertLocation != null;

  // "alert_created_at" field.
  DateTime? _alertCreatedAt;
  DateTime? get alertCreatedAt => _alertCreatedAt;
  bool hasAlertCreatedAt() => _alertCreatedAt != null;

  // "alert_resolved_at" field.
  DateTime? _alertResolvedAt;
  DateTime? get alertResolvedAt => _alertResolvedAt;
  bool hasAlertResolvedAt() => _alertResolvedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _triggeredBy = snapshotData['triggered_by'] as DocumentReference?;
    _alertLocation = snapshotData['alert_location'] as LatLng?;
    _alertCreatedAt = snapshotData['alert_created_at'] as DateTime?;
    _alertResolvedAt = snapshotData['alert_resolved_at'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Panic_Button_Alert');

  static Stream<PanicButtonAlertRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PanicButtonAlertRecord.fromSnapshot(s));

  static Future<PanicButtonAlertRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PanicButtonAlertRecord.fromSnapshot(s));

  static PanicButtonAlertRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PanicButtonAlertRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PanicButtonAlertRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PanicButtonAlertRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PanicButtonAlertRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PanicButtonAlertRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPanicButtonAlertRecordData({
  String? type,
  DocumentReference? triggeredBy,
  LatLng? alertLocation,
  DateTime? alertCreatedAt,
  DateTime? alertResolvedAt,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'triggered_by': triggeredBy,
      'alert_location': alertLocation,
      'alert_created_at': alertCreatedAt,
      'alert_resolved_at': alertResolvedAt,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class PanicButtonAlertRecordDocumentEquality
    implements Equality<PanicButtonAlertRecord> {
  const PanicButtonAlertRecordDocumentEquality();

  @override
  bool equals(PanicButtonAlertRecord? e1, PanicButtonAlertRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.triggeredBy == e2?.triggeredBy &&
        e1?.alertLocation == e2?.alertLocation &&
        e1?.alertCreatedAt == e2?.alertCreatedAt &&
        e1?.alertResolvedAt == e2?.alertResolvedAt &&
        e1?.status == e2?.status;
  }

  @override
  int hash(PanicButtonAlertRecord? e) => const ListEquality().hash([
        e?.type,
        e?.triggeredBy,
        e?.alertLocation,
        e?.alertCreatedAt,
        e?.alertResolvedAt,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is PanicButtonAlertRecord;
}
