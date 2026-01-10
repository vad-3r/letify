import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContractBuilderSubClauseRecord extends FirestoreRecord {
  ContractBuilderSubClauseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "index" field.
  String? _index;
  String get index => _index ?? '';
  bool hasIndex() => _index != null;

  // "main_clause_id" field.
  DocumentReference? _mainClauseId;
  DocumentReference? get mainClauseId => _mainClauseId;
  bool hasMainClauseId() => _mainClauseId != null;

  // "sub_clause" field.
  String? _subClause;
  String get subClause => _subClause ?? '';
  bool hasSubClause() => _subClause != null;

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  bool hasPosition() => _position != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _index = snapshotData['index'] as String?;
    _mainClauseId = snapshotData['main_clause_id'] as DocumentReference?;
    _subClause = snapshotData['sub_clause'] as String?;
    _position = castToType<int>(snapshotData['position']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Contract_Builder_Sub_Clause')
          : FirebaseFirestore.instance
              .collectionGroup('Contract_Builder_Sub_Clause');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Contract_Builder_Sub_Clause').doc(id);

  static Stream<ContractBuilderSubClauseRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ContractBuilderSubClauseRecord.fromSnapshot(s));

  static Future<ContractBuilderSubClauseRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ContractBuilderSubClauseRecord.fromSnapshot(s));

  static ContractBuilderSubClauseRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ContractBuilderSubClauseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContractBuilderSubClauseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContractBuilderSubClauseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContractBuilderSubClauseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContractBuilderSubClauseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContractBuilderSubClauseRecordData({
  DateTime? createdAt,
  String? index,
  DocumentReference? mainClauseId,
  String? subClause,
  int? position,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'index': index,
      'main_clause_id': mainClauseId,
      'sub_clause': subClause,
      'position': position,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContractBuilderSubClauseRecordDocumentEquality
    implements Equality<ContractBuilderSubClauseRecord> {
  const ContractBuilderSubClauseRecordDocumentEquality();

  @override
  bool equals(
      ContractBuilderSubClauseRecord? e1, ContractBuilderSubClauseRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.index == e2?.index &&
        e1?.mainClauseId == e2?.mainClauseId &&
        e1?.subClause == e2?.subClause &&
        e1?.position == e2?.position;
  }

  @override
  int hash(ContractBuilderSubClauseRecord? e) => const ListEquality().hash(
      [e?.createdAt, e?.index, e?.mainClauseId, e?.subClause, e?.position]);

  @override
  bool isValidKey(Object? o) => o is ContractBuilderSubClauseRecord;
}
