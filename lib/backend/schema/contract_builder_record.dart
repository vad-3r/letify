import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContractBuilderRecord extends FirestoreRecord {
  ContractBuilderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Contract_Name" field.
  String? _contractName;
  String get contractName => _contractName ?? '';
  bool hasContractName() => _contractName != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "Clauses" field.
  List<DocumentReference>? _clauses;
  List<DocumentReference> get clauses => _clauses ?? const [];
  bool hasClauses() => _clauses != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _contractName = snapshotData['Contract_Name'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _clauses = getDataList(snapshotData['Clauses']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contract_Builder');

  static Stream<ContractBuilderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContractBuilderRecord.fromSnapshot(s));

  static Future<ContractBuilderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContractBuilderRecord.fromSnapshot(s));

  static ContractBuilderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContractBuilderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContractBuilderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContractBuilderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContractBuilderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContractBuilderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContractBuilderRecordData({
  String? contractName,
  DocumentReference? userId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Contract_Name': contractName,
      'user_id': userId,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContractBuilderRecordDocumentEquality
    implements Equality<ContractBuilderRecord> {
  const ContractBuilderRecordDocumentEquality();

  @override
  bool equals(ContractBuilderRecord? e1, ContractBuilderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.contractName == e2?.contractName &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.clauses, e2?.clauses) &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ContractBuilderRecord? e) => const ListEquality()
      .hash([e?.contractName, e?.userId, e?.clauses, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ContractBuilderRecord;
}
