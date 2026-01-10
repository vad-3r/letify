import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContractPathsRecord extends FirestoreRecord {
  ContractPathsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "contract_path" field.
  String? _contractPath;
  String get contractPath => _contractPath ?? '';
  bool hasContractPath() => _contractPath != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _contractPath = snapshotData['contract_path'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ContractPaths');

  static Stream<ContractPathsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContractPathsRecord.fromSnapshot(s));

  static Future<ContractPathsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContractPathsRecord.fromSnapshot(s));

  static ContractPathsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContractPathsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContractPathsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContractPathsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContractPathsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContractPathsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContractPathsRecordData({
  String? contractPath,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contract_path': contractPath,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContractPathsRecordDocumentEquality
    implements Equality<ContractPathsRecord> {
  const ContractPathsRecordDocumentEquality();

  @override
  bool equals(ContractPathsRecord? e1, ContractPathsRecord? e2) {
    return e1?.contractPath == e2?.contractPath &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ContractPathsRecord? e) =>
      const ListEquality().hash([e?.contractPath, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is ContractPathsRecord;
}
