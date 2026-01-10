import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LandlordRecord extends FirestoreRecord {
  LandlordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "accountPassword" field.
  String? _accountPassword;
  String get accountPassword => _accountPassword ?? '';
  bool hasAccountPassword() => _accountPassword != null;

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  // "permissions" field.
  List<String>? _permissions;
  List<String> get permissions => _permissions ?? const [];
  bool hasPermissions() => _permissions != null;

  // "agent_mananger" field.
  DocumentReference? _agentMananger;
  DocumentReference? get agentMananger => _agentMananger;
  bool hasAgentMananger() => _agentMananger != null;

  // "email_address" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "portfolios_linked" field.
  List<DocumentReference>? _portfoliosLinked;
  List<DocumentReference> get portfoliosLinked => _portfoliosLinked ?? const [];
  bool hasPortfoliosLinked() => _portfoliosLinked != null;

  // "portfolios" field.
  List<String>? _portfolios;
  List<String> get portfolios => _portfolios ?? const [];
  bool hasPortfolios() => _portfolios != null;

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  void _initializeFields() {
    _userName = snapshotData['user_name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _accountPassword = snapshotData['accountPassword'] as String?;
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _permissions = getDataList(snapshotData['permissions']);
    _agentMananger = snapshotData['agent_mananger'] as DocumentReference?;
    _emailAddress = snapshotData['email_address'] as String?;
    _portfoliosLinked = getDataList(snapshotData['portfolios_linked']);
    _portfolios = getDataList(snapshotData['portfolios']);
    _companyId = snapshotData['company_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Landlord');

  static Stream<LandlordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LandlordRecord.fromSnapshot(s));

  static Future<LandlordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LandlordRecord.fromSnapshot(s));

  static LandlordRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LandlordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LandlordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LandlordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LandlordRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LandlordRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLandlordRecordData({
  String? userName,
  String? surname,
  String? accountPassword,
  DocumentReference? landlordId,
  DocumentReference? agentMananger,
  String? emailAddress,
  String? companyId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_name': userName,
      'surname': surname,
      'accountPassword': accountPassword,
      'landlord_id': landlordId,
      'agent_mananger': agentMananger,
      'email_address': emailAddress,
      'company_id': companyId,
    }.withoutNulls,
  );

  return firestoreData;
}

class LandlordRecordDocumentEquality implements Equality<LandlordRecord> {
  const LandlordRecordDocumentEquality();

  @override
  bool equals(LandlordRecord? e1, LandlordRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userName == e2?.userName &&
        e1?.surname == e2?.surname &&
        e1?.accountPassword == e2?.accountPassword &&
        e1?.landlordId == e2?.landlordId &&
        listEquality.equals(e1?.permissions, e2?.permissions) &&
        e1?.agentMananger == e2?.agentMananger &&
        e1?.emailAddress == e2?.emailAddress &&
        listEquality.equals(e1?.portfoliosLinked, e2?.portfoliosLinked) &&
        listEquality.equals(e1?.portfolios, e2?.portfolios) &&
        e1?.companyId == e2?.companyId;
  }

  @override
  int hash(LandlordRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.surname,
        e?.accountPassword,
        e?.landlordId,
        e?.permissions,
        e?.agentMananger,
        e?.emailAddress,
        e?.portfoliosLinked,
        e?.portfolios,
        e?.companyId
      ]);

  @override
  bool isValidKey(Object? o) => o is LandlordRecord;
}
