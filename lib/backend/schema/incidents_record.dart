import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncidentsRecord extends FirestoreRecord {
  IncidentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reported_by" field.
  DocumentReference? _reportedBy;
  DocumentReference? get reportedBy => _reportedBy;
  bool hasReportedBy() => _reportedBy != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "incident_location" field.
  LatLng? _incidentLocation;
  LatLng? get incidentLocation => _incidentLocation;
  bool hasIncidentLocation() => _incidentLocation != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "reported_at" field.
  DateTime? _reportedAt;
  DateTime? get reportedAt => _reportedAt;
  bool hasReportedAt() => _reportedAt != null;

  // "resolved_at" field.
  DateTime? _resolvedAt;
  DateTime? get resolvedAt => _resolvedAt;
  bool hasResolvedAt() => _resolvedAt != null;

  // "evidence_photo" field.
  String? _evidencePhoto;
  String get evidencePhoto => _evidencePhoto ?? '';
  bool hasEvidencePhoto() => _evidencePhoto != null;

  // "guards_assigned" field.
  List<DocumentReference>? _guardsAssigned;
  List<DocumentReference> get guardsAssigned => _guardsAssigned ?? const [];
  bool hasGuardsAssigned() => _guardsAssigned != null;

  void _initializeFields() {
    _reportedBy = snapshotData['reported_by'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _incidentLocation = snapshotData['incident_location'] as LatLng?;
    _status = snapshotData['status'] as String?;
    _reportedAt = snapshotData['reported_at'] as DateTime?;
    _resolvedAt = snapshotData['resolved_at'] as DateTime?;
    _evidencePhoto = snapshotData['evidence_photo'] as String?;
    _guardsAssigned = getDataList(snapshotData['guards_assigned']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Incidents');

  static Stream<IncidentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncidentsRecord.fromSnapshot(s));

  static Future<IncidentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncidentsRecord.fromSnapshot(s));

  static IncidentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncidentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncidentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncidentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncidentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncidentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncidentsRecordData({
  DocumentReference? reportedBy,
  String? type,
  String? description,
  LatLng? incidentLocation,
  String? status,
  DateTime? reportedAt,
  DateTime? resolvedAt,
  String? evidencePhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reported_by': reportedBy,
      'type': type,
      'description': description,
      'incident_location': incidentLocation,
      'status': status,
      'reported_at': reportedAt,
      'resolved_at': resolvedAt,
      'evidence_photo': evidencePhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncidentsRecordDocumentEquality implements Equality<IncidentsRecord> {
  const IncidentsRecordDocumentEquality();

  @override
  bool equals(IncidentsRecord? e1, IncidentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.reportedBy == e2?.reportedBy &&
        e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.incidentLocation == e2?.incidentLocation &&
        e1?.status == e2?.status &&
        e1?.reportedAt == e2?.reportedAt &&
        e1?.resolvedAt == e2?.resolvedAt &&
        e1?.evidencePhoto == e2?.evidencePhoto &&
        listEquality.equals(e1?.guardsAssigned, e2?.guardsAssigned);
  }

  @override
  int hash(IncidentsRecord? e) => const ListEquality().hash([
        e?.reportedBy,
        e?.type,
        e?.description,
        e?.incidentLocation,
        e?.status,
        e?.reportedAt,
        e?.resolvedAt,
        e?.evidencePhoto,
        e?.guardsAssigned
      ]);

  @override
  bool isValidKey(Object? o) => o is IncidentsRecord;
}
