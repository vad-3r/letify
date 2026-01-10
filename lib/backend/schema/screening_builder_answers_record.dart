import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScreeningBuilderAnswersRecord extends FirestoreRecord {
  ScreeningBuilderAnswersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "question_id" field.
  DocumentReference? _questionId;
  DocumentReference? get questionId => _questionId;
  bool hasQuestionId() => _questionId != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "index" field.
  String? _index;
  String get index => _index ?? '';
  bool hasIndex() => _index != null;

  // "points" field.
  double? _points;
  double get points => _points ?? 0.0;
  bool hasPoints() => _points != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  bool hasIsSelected() => _isSelected != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _questionId = snapshotData['question_id'] as DocumentReference?;
    _answer = snapshotData['answer'] as String?;
    _index = snapshotData['index'] as String?;
    _points = castToType<double>(snapshotData['points']);
    _isSelected = snapshotData['isSelected'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Screening_Builder_Answers')
          : FirebaseFirestore.instance
              .collectionGroup('Screening_Builder_Answers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Screening_Builder_Answers').doc(id);

  static Stream<ScreeningBuilderAnswersRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ScreeningBuilderAnswersRecord.fromSnapshot(s));

  static Future<ScreeningBuilderAnswersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ScreeningBuilderAnswersRecord.fromSnapshot(s));

  static ScreeningBuilderAnswersRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ScreeningBuilderAnswersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScreeningBuilderAnswersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScreeningBuilderAnswersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScreeningBuilderAnswersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScreeningBuilderAnswersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScreeningBuilderAnswersRecordData({
  DocumentReference? questionId,
  String? answer,
  String? index,
  double? points,
  bool? isSelected,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question_id': questionId,
      'answer': answer,
      'index': index,
      'points': points,
      'isSelected': isSelected,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScreeningBuilderAnswersRecordDocumentEquality
    implements Equality<ScreeningBuilderAnswersRecord> {
  const ScreeningBuilderAnswersRecordDocumentEquality();

  @override
  bool equals(
      ScreeningBuilderAnswersRecord? e1, ScreeningBuilderAnswersRecord? e2) {
    return e1?.questionId == e2?.questionId &&
        e1?.answer == e2?.answer &&
        e1?.index == e2?.index &&
        e1?.points == e2?.points &&
        e1?.isSelected == e2?.isSelected &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ScreeningBuilderAnswersRecord? e) => const ListEquality().hash([
        e?.questionId,
        e?.answer,
        e?.index,
        e?.points,
        e?.isSelected,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ScreeningBuilderAnswersRecord;
}
