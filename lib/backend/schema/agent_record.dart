import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentRecord extends FirestoreRecord {
  AgentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "agent_name" field.
  String? _agentName;
  String get agentName => _agentName ?? '';
  bool hasAgentName() => _agentName != null;

  // "agent_surname" field.
  String? _agentSurname;
  String get agentSurname => _agentSurname ?? '';
  bool hasAgentSurname() => _agentSurname != null;

  // "agent_permissions" field.
  List<String>? _agentPermissions;
  List<String> get agentPermissions => _agentPermissions ?? const [];
  bool hasAgentPermissions() => _agentPermissions != null;

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "agent_email" field.
  String? _agentEmail;
  String get agentEmail => _agentEmail ?? '';
  bool hasAgentEmail() => _agentEmail != null;

  // "agent_tel_number" field.
  String? _agentTelNumber;
  String get agentTelNumber => _agentTelNumber ?? '';
  bool hasAgentTelNumber() => _agentTelNumber != null;

  // "agent_id_string" field.
  String? _agentIdString;
  String get agentIdString => _agentIdString ?? '';
  bool hasAgentIdString() => _agentIdString != null;

  // "owner" field.
  List<DocumentReference>? _owner;
  List<DocumentReference> get owner => _owner ?? const [];
  bool hasOwner() => _owner != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _agentName = snapshotData['agent_name'] as String?;
    _agentSurname = snapshotData['agent_surname'] as String?;
    _agentPermissions = getDataList(snapshotData['agent_permissions']);
    _companyId = snapshotData['company_id'] as String?;
    _agentEmail = snapshotData['agent_email'] as String?;
    _agentTelNumber = snapshotData['agent_tel_number'] as String?;
    _agentIdString = snapshotData['agent_id_string'] as String?;
    _owner = getDataList(snapshotData['owner']);
    _role = snapshotData['role'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Agent');

  static Stream<AgentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgentRecord.fromSnapshot(s));

  static Future<AgentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgentRecord.fromSnapshot(s));

  static AgentRecord fromSnapshot(DocumentSnapshot snapshot) => AgentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgentRecordData({
  DocumentReference? userId,
  String? agentName,
  String? agentSurname,
  String? companyId,
  String? agentEmail,
  String? agentTelNumber,
  String? agentIdString,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'agent_name': agentName,
      'agent_surname': agentSurname,
      'company_id': companyId,
      'agent_email': agentEmail,
      'agent_tel_number': agentTelNumber,
      'agent_id_string': agentIdString,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgentRecordDocumentEquality implements Equality<AgentRecord> {
  const AgentRecordDocumentEquality();

  @override
  bool equals(AgentRecord? e1, AgentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.agentName == e2?.agentName &&
        e1?.agentSurname == e2?.agentSurname &&
        listEquality.equals(e1?.agentPermissions, e2?.agentPermissions) &&
        e1?.companyId == e2?.companyId &&
        e1?.agentEmail == e2?.agentEmail &&
        e1?.agentTelNumber == e2?.agentTelNumber &&
        e1?.agentIdString == e2?.agentIdString &&
        listEquality.equals(e1?.owner, e2?.owner) &&
        e1?.role == e2?.role;
  }

  @override
  int hash(AgentRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.agentName,
        e?.agentSurname,
        e?.agentPermissions,
        e?.companyId,
        e?.agentEmail,
        e?.agentTelNumber,
        e?.agentIdString,
        e?.owner,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is AgentRecord;
}
