import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationalInstitutionRecord extends FirestoreRecord {
  EducationalInstitutionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "institute_id" field.
  DocumentReference? _instituteId;
  DocumentReference? get instituteId => _instituteId;
  bool hasInstituteId() => _instituteId != null;

  // "institute_name" field.
  String? _instituteName;
  String get instituteName => _instituteName ?? '';
  bool hasInstituteName() => _instituteName != null;

  // "institute_location" field.
  LatLng? _instituteLocation;
  LatLng? get instituteLocation => _instituteLocation;
  bool hasInstituteLocation() => _instituteLocation != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "contact_email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "service_providers" field.
  DocumentReference? _serviceProviders;
  DocumentReference? get serviceProviders => _serviceProviders;
  bool hasServiceProviders() => _serviceProviders != null;

  // "letify_authorization" field.
  bool? _letifyAuthorization;
  bool get letifyAuthorization => _letifyAuthorization ?? false;
  bool hasLetifyAuthorization() => _letifyAuthorization != null;

  void _initializeFields() {
    _instituteId = snapshotData['institute_id'] as DocumentReference?;
    _instituteName = snapshotData['institute_name'] as String?;
    _instituteLocation = snapshotData['institute_location'] as LatLng?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _contactEmail = snapshotData['contact_email'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _serviceProviders = snapshotData['service_providers'] as DocumentReference?;
    _letifyAuthorization = snapshotData['letify_authorization'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Educational_Institution');

  static Stream<EducationalInstitutionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => EducationalInstitutionRecord.fromSnapshot(s));

  static Future<EducationalInstitutionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EducationalInstitutionRecord.fromSnapshot(s));

  static EducationalInstitutionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducationalInstitutionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducationalInstitutionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducationalInstitutionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducationalInstitutionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducationalInstitutionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducationalInstitutionRecordData({
  DocumentReference? instituteId,
  String? instituteName,
  LatLng? instituteLocation,
  String? phoneNumber,
  String? contactEmail,
  DateTime? createdAt,
  DocumentReference? serviceProviders,
  bool? letifyAuthorization,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'institute_id': instituteId,
      'institute_name': instituteName,
      'institute_location': instituteLocation,
      'phone_number': phoneNumber,
      'contact_email': contactEmail,
      'created_at': createdAt,
      'service_providers': serviceProviders,
      'letify_authorization': letifyAuthorization,
    }.withoutNulls,
  );

  return firestoreData;
}

class EducationalInstitutionRecordDocumentEquality
    implements Equality<EducationalInstitutionRecord> {
  const EducationalInstitutionRecordDocumentEquality();

  @override
  bool equals(
      EducationalInstitutionRecord? e1, EducationalInstitutionRecord? e2) {
    return e1?.instituteId == e2?.instituteId &&
        e1?.instituteName == e2?.instituteName &&
        e1?.instituteLocation == e2?.instituteLocation &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.createdAt == e2?.createdAt &&
        e1?.serviceProviders == e2?.serviceProviders &&
        e1?.letifyAuthorization == e2?.letifyAuthorization;
  }

  @override
  int hash(EducationalInstitutionRecord? e) => const ListEquality().hash([
        e?.instituteId,
        e?.instituteName,
        e?.instituteLocation,
        e?.phoneNumber,
        e?.contactEmail,
        e?.createdAt,
        e?.serviceProviders,
        e?.letifyAuthorization
      ]);

  @override
  bool isValidKey(Object? o) => o is EducationalInstitutionRecord;
}
