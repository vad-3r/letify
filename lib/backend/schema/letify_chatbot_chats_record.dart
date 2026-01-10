import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LetifyChatbotChatsRecord extends FirestoreRecord {
  LetifyChatbotChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Letify_Chatbot_Chats');

  static Stream<LetifyChatbotChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LetifyChatbotChatsRecord.fromSnapshot(s));

  static Future<LetifyChatbotChatsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LetifyChatbotChatsRecord.fromSnapshot(s));

  static LetifyChatbotChatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LetifyChatbotChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LetifyChatbotChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LetifyChatbotChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LetifyChatbotChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LetifyChatbotChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLetifyChatbotChatsRecordData({
  DocumentReference? userId,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class LetifyChatbotChatsRecordDocumentEquality
    implements Equality<LetifyChatbotChatsRecord> {
  const LetifyChatbotChatsRecordDocumentEquality();

  @override
  bool equals(LetifyChatbotChatsRecord? e1, LetifyChatbotChatsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.title == e2?.title;
  }

  @override
  int hash(LetifyChatbotChatsRecord? e) => const ListEquality()
      .hash([e?.userId, e?.createdAt, e?.updatedAt, e?.title]);

  @override
  bool isValidKey(Object? o) => o is LetifyChatbotChatsRecord;
}
