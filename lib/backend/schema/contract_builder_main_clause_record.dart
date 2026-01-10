import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContractBuilderMainClauseRecord extends FirestoreRecord {
  ContractBuilderMainClauseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "Contract_Id" field.
  DocumentReference? _contractId;
  DocumentReference? get contractId => _contractId;
  bool hasContractId() => _contractId != null;

  // "Main_Clause" field.
  String? _mainClause;
  String get mainClause => _mainClause ?? '';
  bool hasMainClause() => _mainClause != null;

  // "Num_Of_Sub_Clauses" field.
  int? _numOfSubClauses;
  int get numOfSubClauses => _numOfSubClauses ?? 0;
  bool hasNumOfSubClauses() => _numOfSubClauses != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['Index']);
    _contractId = snapshotData['Contract_Id'] as DocumentReference?;
    _mainClause = snapshotData['Main_Clause'] as String?;
    _numOfSubClauses = castToType<int>(snapshotData['Num_Of_Sub_Clauses']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contract_Builder_Main_Clause');

  static Stream<ContractBuilderMainClauseRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ContractBuilderMainClauseRecord.fromSnapshot(s));

  static Future<ContractBuilderMainClauseRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ContractBuilderMainClauseRecord.fromSnapshot(s));

  static ContractBuilderMainClauseRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ContractBuilderMainClauseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContractBuilderMainClauseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContractBuilderMainClauseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContractBuilderMainClauseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContractBuilderMainClauseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContractBuilderMainClauseRecordData({
  int? index,
  DocumentReference? contractId,
  String? mainClause,
  int? numOfSubClauses,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Index': index,
      'Contract_Id': contractId,
      'Main_Clause': mainClause,
      'Num_Of_Sub_Clauses': numOfSubClauses,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContractBuilderMainClauseRecordDocumentEquality
    implements Equality<ContractBuilderMainClauseRecord> {
  const ContractBuilderMainClauseRecordDocumentEquality();

  @override
  bool equals(ContractBuilderMainClauseRecord? e1,
      ContractBuilderMainClauseRecord? e2) {
    return e1?.index == e2?.index &&
        e1?.contractId == e2?.contractId &&
        e1?.mainClause == e2?.mainClause &&
        e1?.numOfSubClauses == e2?.numOfSubClauses &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ContractBuilderMainClauseRecord? e) => const ListEquality().hash([
        e?.index,
        e?.contractId,
        e?.mainClause,
        e?.numOfSubClauses,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ContractBuilderMainClauseRecord;
}
