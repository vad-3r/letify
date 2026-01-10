import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplaintsRecord extends FirestoreRecord {
  ComplaintsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "complaint_id" field.
  String? _complaintId;
  String get complaintId => _complaintId ?? '';
  bool hasComplaintId() => _complaintId != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "complaint_description" field.
  String? _complaintDescription;
  String get complaintDescription => _complaintDescription ?? '';
  bool hasComplaintDescription() => _complaintDescription != null;

  // "complaint_status" field.
  String? _complaintStatus;
  String get complaintStatus => _complaintStatus ?? '';
  bool hasComplaintStatus() => _complaintStatus != null;

  // "complaint_timestamp" field.
  DateTime? _complaintTimestamp;
  DateTime? get complaintTimestamp => _complaintTimestamp;
  bool hasComplaintTimestamp() => _complaintTimestamp != null;

  // "studentComplaint" field.
  DocumentReference? _studentComplaint;
  DocumentReference? get studentComplaint => _studentComplaint;
  bool hasStudentComplaint() => _studentComplaint != null;

  void _initializeFields() {
    _complaintId = snapshotData['complaint_id'] as String?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _complaintDescription = snapshotData['complaint_description'] as String?;
    _complaintStatus = snapshotData['complaint_status'] as String?;
    _complaintTimestamp = snapshotData['complaint_timestamp'] as DateTime?;
    _studentComplaint = snapshotData['studentComplaint'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Complaints');

  static Stream<ComplaintsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComplaintsRecord.fromSnapshot(s));

  static Future<ComplaintsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComplaintsRecord.fromSnapshot(s));

  static ComplaintsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComplaintsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComplaintsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComplaintsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComplaintsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComplaintsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComplaintsRecordData({
  String? complaintId,
  DocumentReference? propertyId,
  String? complaintDescription,
  String? complaintStatus,
  DateTime? complaintTimestamp,
  DocumentReference? studentComplaint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'complaint_id': complaintId,
      'property_id': propertyId,
      'complaint_description': complaintDescription,
      'complaint_status': complaintStatus,
      'complaint_timestamp': complaintTimestamp,
      'studentComplaint': studentComplaint,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComplaintsRecordDocumentEquality implements Equality<ComplaintsRecord> {
  const ComplaintsRecordDocumentEquality();

  @override
  bool equals(ComplaintsRecord? e1, ComplaintsRecord? e2) {
    return e1?.complaintId == e2?.complaintId &&
        e1?.propertyId == e2?.propertyId &&
        e1?.complaintDescription == e2?.complaintDescription &&
        e1?.complaintStatus == e2?.complaintStatus &&
        e1?.complaintTimestamp == e2?.complaintTimestamp &&
        e1?.studentComplaint == e2?.studentComplaint;
  }

  @override
  int hash(ComplaintsRecord? e) => const ListEquality().hash([
        e?.complaintId,
        e?.propertyId,
        e?.complaintDescription,
        e?.complaintStatus,
        e?.complaintTimestamp,
        e?.studentComplaint
      ]);

  @override
  bool isValidKey(Object? o) => o is ComplaintsRecord;
}
