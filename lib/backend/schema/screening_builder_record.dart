import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScreeningBuilderRecord extends FirestoreRecord {
  ScreeningBuilderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "acknowledgement" field.
  bool? _acknowledgement;
  bool get acknowledgement => _acknowledgement ?? false;
  bool hasAcknowledgement() => _acknowledgement != null;

  // "compliance_notice" field.
  bool? _complianceNotice;
  bool get complianceNotice => _complianceNotice ?? false;
  bool hasComplianceNotice() => _complianceNotice != null;

  // "declaration" field.
  bool? _declaration;
  bool get declaration => _declaration ?? false;
  bool hasDeclaration() => _declaration != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "questions" field.
  List<DocumentReference>? _questions;
  List<DocumentReference> get questions => _questions ?? const [];
  bool hasQuestions() => _questions != null;

  // "minimum_passing_points" field.
  double? _minimumPassingPoints;
  double get minimumPassingPoints => _minimumPassingPoints ?? 0.0;
  bool hasMinimumPassingPoints() => _minimumPassingPoints != null;

  // "maximum_passing_points" field.
  double? _maximumPassingPoints;
  double get maximumPassingPoints => _maximumPassingPoints ?? 0.0;
  bool hasMaximumPassingPoints() => _maximumPassingPoints != null;

  // "minimum_caution_points" field.
  double? _minimumCautionPoints;
  double get minimumCautionPoints => _minimumCautionPoints ?? 0.0;
  bool hasMinimumCautionPoints() => _minimumCautionPoints != null;

  // "maximum_caution_points" field.
  double? _maximumCautionPoints;
  double get maximumCautionPoints => _maximumCautionPoints ?? 0.0;
  bool hasMaximumCautionPoints() => _maximumCautionPoints != null;

  // "minimum_fail_points" field.
  double? _minimumFailPoints;
  double get minimumFailPoints => _minimumFailPoints ?? 0.0;
  bool hasMinimumFailPoints() => _minimumFailPoints != null;

  // "maximum_fail_points" field.
  double? _maximumFailPoints;
  double get maximumFailPoints => _maximumFailPoints ?? 0.0;
  bool hasMaximumFailPoints() => _maximumFailPoints != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _acknowledgement = snapshotData['acknowledgement'] as bool?;
    _complianceNotice = snapshotData['compliance_notice'] as bool?;
    _declaration = snapshotData['declaration'] as bool?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _companyName = snapshotData['company_name'] as String?;
    _questions = getDataList(snapshotData['questions']);
    _minimumPassingPoints =
        castToType<double>(snapshotData['minimum_passing_points']);
    _maximumPassingPoints =
        castToType<double>(snapshotData['maximum_passing_points']);
    _minimumCautionPoints =
        castToType<double>(snapshotData['minimum_caution_points']);
    _maximumCautionPoints =
        castToType<double>(snapshotData['maximum_caution_points']);
    _minimumFailPoints =
        castToType<double>(snapshotData['minimum_fail_points']);
    _maximumFailPoints =
        castToType<double>(snapshotData['maximum_fail_points']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Screening_Builder');

  static Stream<ScreeningBuilderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScreeningBuilderRecord.fromSnapshot(s));

  static Future<ScreeningBuilderRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ScreeningBuilderRecord.fromSnapshot(s));

  static ScreeningBuilderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScreeningBuilderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScreeningBuilderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScreeningBuilderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScreeningBuilderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScreeningBuilderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScreeningBuilderRecordData({
  String? name,
  DateTime? createdAt,
  bool? acknowledgement,
  bool? complianceNotice,
  bool? declaration,
  DocumentReference? userId,
  String? companyName,
  double? minimumPassingPoints,
  double? maximumPassingPoints,
  double? minimumCautionPoints,
  double? maximumCautionPoints,
  double? minimumFailPoints,
  double? maximumFailPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'created_at': createdAt,
      'acknowledgement': acknowledgement,
      'compliance_notice': complianceNotice,
      'declaration': declaration,
      'user_id': userId,
      'company_name': companyName,
      'minimum_passing_points': minimumPassingPoints,
      'maximum_passing_points': maximumPassingPoints,
      'minimum_caution_points': minimumCautionPoints,
      'maximum_caution_points': maximumCautionPoints,
      'minimum_fail_points': minimumFailPoints,
      'maximum_fail_points': maximumFailPoints,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScreeningBuilderRecordDocumentEquality
    implements Equality<ScreeningBuilderRecord> {
  const ScreeningBuilderRecordDocumentEquality();

  @override
  bool equals(ScreeningBuilderRecord? e1, ScreeningBuilderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.createdAt == e2?.createdAt &&
        e1?.acknowledgement == e2?.acknowledgement &&
        e1?.complianceNotice == e2?.complianceNotice &&
        e1?.declaration == e2?.declaration &&
        e1?.userId == e2?.userId &&
        e1?.companyName == e2?.companyName &&
        listEquality.equals(e1?.questions, e2?.questions) &&
        e1?.minimumPassingPoints == e2?.minimumPassingPoints &&
        e1?.maximumPassingPoints == e2?.maximumPassingPoints &&
        e1?.minimumCautionPoints == e2?.minimumCautionPoints &&
        e1?.maximumCautionPoints == e2?.maximumCautionPoints &&
        e1?.minimumFailPoints == e2?.minimumFailPoints &&
        e1?.maximumFailPoints == e2?.maximumFailPoints;
  }

  @override
  int hash(ScreeningBuilderRecord? e) => const ListEquality().hash([
        e?.name,
        e?.createdAt,
        e?.acknowledgement,
        e?.complianceNotice,
        e?.declaration,
        e?.userId,
        e?.companyName,
        e?.questions,
        e?.minimumPassingPoints,
        e?.maximumPassingPoints,
        e?.minimumCautionPoints,
        e?.maximumCautionPoints,
        e?.minimumFailPoints,
        e?.maximumFailPoints
      ]);

  @override
  bool isValidKey(Object? o) => o is ScreeningBuilderRecord;
}
