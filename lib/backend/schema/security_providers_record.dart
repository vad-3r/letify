import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SecurityProvidersRecord extends FirestoreRecord {
  SecurityProvidersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "contact_email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "employees" field.
  List<DocumentReference>? _employees;
  List<DocumentReference> get employees => _employees ?? const [];
  bool hasEmployees() => _employees != null;

  // "security_provider_id" field.
  DocumentReference? _securityProviderId;
  DocumentReference? get securityProviderId => _securityProviderId;
  bool hasSecurityProviderId() => _securityProviderId != null;

  // "letify_authorization" field.
  bool? _letifyAuthorization;
  bool get letifyAuthorization => _letifyAuthorization ?? false;
  bool hasLetifyAuthorization() => _letifyAuthorization != null;

  // "institute_authorize" field.
  bool? _instituteAuthorize;
  bool get instituteAuthorize => _instituteAuthorize ?? false;
  bool hasInstituteAuthorize() => _instituteAuthorize != null;

  // "notification_sent" field.
  bool? _notificationSent;
  bool get notificationSent => _notificationSent ?? false;
  bool hasNotificationSent() => _notificationSent != null;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _contactEmail = snapshotData['contact_email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _employees = getDataList(snapshotData['employees']);
    _securityProviderId =
        snapshotData['security_provider_id'] as DocumentReference?;
    _letifyAuthorization = snapshotData['letify_authorization'] as bool?;
    _instituteAuthorize = snapshotData['institute_authorize'] as bool?;
    _notificationSent = snapshotData['notification_sent'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Security_Providers');

  static Stream<SecurityProvidersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SecurityProvidersRecord.fromSnapshot(s));

  static Future<SecurityProvidersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SecurityProvidersRecord.fromSnapshot(s));

  static SecurityProvidersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SecurityProvidersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SecurityProvidersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SecurityProvidersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SecurityProvidersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SecurityProvidersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSecurityProvidersRecordData({
  String? companyName,
  String? contactEmail,
  String? phoneNumber,
  LatLng? location,
  DateTime? createdAt,
  DocumentReference? securityProviderId,
  bool? letifyAuthorization,
  bool? instituteAuthorize,
  bool? notificationSent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyName': companyName,
      'contact_email': contactEmail,
      'phone_number': phoneNumber,
      'location': location,
      'created_at': createdAt,
      'security_provider_id': securityProviderId,
      'letify_authorization': letifyAuthorization,
      'institute_authorize': instituteAuthorize,
      'notification_sent': notificationSent,
    }.withoutNulls,
  );

  return firestoreData;
}

class SecurityProvidersRecordDocumentEquality
    implements Equality<SecurityProvidersRecord> {
  const SecurityProvidersRecordDocumentEquality();

  @override
  bool equals(SecurityProvidersRecord? e1, SecurityProvidersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.companyName == e2?.companyName &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.location == e2?.location &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.employees, e2?.employees) &&
        e1?.securityProviderId == e2?.securityProviderId &&
        e1?.letifyAuthorization == e2?.letifyAuthorization &&
        e1?.instituteAuthorize == e2?.instituteAuthorize &&
        e1?.notificationSent == e2?.notificationSent;
  }

  @override
  int hash(SecurityProvidersRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.contactEmail,
        e?.phoneNumber,
        e?.location,
        e?.createdAt,
        e?.employees,
        e?.securityProviderId,
        e?.letifyAuthorization,
        e?.instituteAuthorize,
        e?.notificationSent
      ]);

  @override
  bool isValidKey(Object? o) => o is SecurityProvidersRecord;
}
