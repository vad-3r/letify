import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PortfolioRecord extends FirestoreRecord {
  PortfolioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "portfolio_id" field.
  String? _portfolioId;
  String get portfolioId => _portfolioId ?? '';
  bool hasPortfolioId() => _portfolioId != null;

  // "portfolio_name" field.
  String? _portfolioName;
  String get portfolioName => _portfolioName ?? '';
  bool hasPortfolioName() => _portfolioName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  // "properties" field.
  List<DocumentReference>? _properties;
  List<DocumentReference> get properties => _properties ?? const [];
  bool hasProperties() => _properties != null;

  // "owners_list" field.
  List<String>? _ownersList;
  List<String> get ownersList => _ownersList ?? const [];
  bool hasOwnersList() => _ownersList != null;

  // "owners_list2" field.
  List<DocumentReference>? _ownersList2;
  List<DocumentReference> get ownersList2 => _ownersList2 ?? const [];
  bool hasOwnersList2() => _ownersList2 != null;

  // "owners_email_list" field.
  String? _ownersEmailList;
  String get ownersEmailList => _ownersEmailList ?? '';
  bool hasOwnersEmailList() => _ownersEmailList != null;

  // "agents_linked" field.
  List<DocumentReference>? _agentsLinked;
  List<DocumentReference> get agentsLinked => _agentsLinked ?? const [];
  bool hasAgentsLinked() => _agentsLinked != null;

  // "previous_email_address" field.
  String? _previousEmailAddress;
  String get previousEmailAddress => _previousEmailAddress ?? '';
  bool hasPreviousEmailAddress() => _previousEmailAddress != null;

  // "email_history" field.
  List<String>? _emailHistory;
  List<String> get emailHistory => _emailHistory ?? const [];
  bool hasEmailHistory() => _emailHistory != null;

  void _initializeFields() {
    _portfolioId = snapshotData['portfolio_id'] as String?;
    _portfolioName = snapshotData['portfolio_name'] as String?;
    _description = snapshotData['description'] as String?;
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _properties = getDataList(snapshotData['properties']);
    _ownersList = getDataList(snapshotData['owners_list']);
    _ownersList2 = getDataList(snapshotData['owners_list2']);
    _ownersEmailList = snapshotData['owners_email_list'] as String?;
    _agentsLinked = getDataList(snapshotData['agents_linked']);
    _previousEmailAddress = snapshotData['previous_email_address'] as String?;
    _emailHistory = getDataList(snapshotData['email_history']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Portfolio');

  static Stream<PortfolioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PortfolioRecord.fromSnapshot(s));

  static Future<PortfolioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PortfolioRecord.fromSnapshot(s));

  static PortfolioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PortfolioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PortfolioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PortfolioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PortfolioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PortfolioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPortfolioRecordData({
  String? portfolioId,
  String? portfolioName,
  String? description,
  DocumentReference? landlordId,
  String? ownersEmailList,
  String? previousEmailAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'portfolio_id': portfolioId,
      'portfolio_name': portfolioName,
      'description': description,
      'landlord_id': landlordId,
      'owners_email_list': ownersEmailList,
      'previous_email_address': previousEmailAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class PortfolioRecordDocumentEquality implements Equality<PortfolioRecord> {
  const PortfolioRecordDocumentEquality();

  @override
  bool equals(PortfolioRecord? e1, PortfolioRecord? e2) {
    const listEquality = ListEquality();
    return e1?.portfolioId == e2?.portfolioId &&
        e1?.portfolioName == e2?.portfolioName &&
        e1?.description == e2?.description &&
        e1?.landlordId == e2?.landlordId &&
        listEquality.equals(e1?.properties, e2?.properties) &&
        listEquality.equals(e1?.ownersList, e2?.ownersList) &&
        listEquality.equals(e1?.ownersList2, e2?.ownersList2) &&
        e1?.ownersEmailList == e2?.ownersEmailList &&
        listEquality.equals(e1?.agentsLinked, e2?.agentsLinked) &&
        e1?.previousEmailAddress == e2?.previousEmailAddress &&
        listEquality.equals(e1?.emailHistory, e2?.emailHistory);
  }

  @override
  int hash(PortfolioRecord? e) => const ListEquality().hash([
        e?.portfolioId,
        e?.portfolioName,
        e?.description,
        e?.landlordId,
        e?.properties,
        e?.ownersList,
        e?.ownersList2,
        e?.ownersEmailList,
        e?.agentsLinked,
        e?.previousEmailAddress,
        e?.emailHistory
      ]);

  @override
  bool isValidKey(Object? o) => o is PortfolioRecord;
}
