import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScreeningBuilderQuestionRecord extends FirestoreRecord {
  ScreeningBuilderQuestionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "screening_id" field.
  DocumentReference? _screeningId;
  DocumentReference? get screeningId => _screeningId;
  bool hasScreeningId() => _screeningId != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "num_of_answers" field.
  int? _numOfAnswers;
  int get numOfAnswers => _numOfAnswers ?? 0;
  bool hasNumOfAnswers() => _numOfAnswers != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['index']);
    _screeningId = snapshotData['screening_id'] as DocumentReference?;
    _question = snapshotData['question'] as String?;
    _numOfAnswers = castToType<int>(snapshotData['num_of_answers']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Screening_Builder_Question');

  static Stream<ScreeningBuilderQuestionRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ScreeningBuilderQuestionRecord.fromSnapshot(s));

  static Future<ScreeningBuilderQuestionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ScreeningBuilderQuestionRecord.fromSnapshot(s));

  static ScreeningBuilderQuestionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ScreeningBuilderQuestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScreeningBuilderQuestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScreeningBuilderQuestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScreeningBuilderQuestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScreeningBuilderQuestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScreeningBuilderQuestionRecordData({
  int? index,
  DocumentReference? screeningId,
  String? question,
  int? numOfAnswers,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'index': index,
      'screening_id': screeningId,
      'question': question,
      'num_of_answers': numOfAnswers,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScreeningBuilderQuestionRecordDocumentEquality
    implements Equality<ScreeningBuilderQuestionRecord> {
  const ScreeningBuilderQuestionRecordDocumentEquality();

  @override
  bool equals(
      ScreeningBuilderQuestionRecord? e1, ScreeningBuilderQuestionRecord? e2) {
    return e1?.index == e2?.index &&
        e1?.screeningId == e2?.screeningId &&
        e1?.question == e2?.question &&
        e1?.numOfAnswers == e2?.numOfAnswers &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ScreeningBuilderQuestionRecord? e) => const ListEquality().hash(
      [e?.index, e?.screeningId, e?.question, e?.numOfAnswers, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ScreeningBuilderQuestionRecord;
}
