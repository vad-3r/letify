import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesRecord extends FirestoreRecord {
  ChatMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chat_ref" field.
  DocumentReference? _chatRef;
  DocumentReference? get chatRef => _chatRef;
  bool hasChatRef() => _chatRef != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  bool hasDatetime() => _datetime != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _chatRef = snapshotData['chat_ref'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _datetime = snapshotData['datetime'] as DateTime?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessagesRecord.fromSnapshot(s));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessagesRecord.fromSnapshot(s));

  static ChatMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessagesRecordData({
  DocumentReference? chatRef,
  String? message,
  DateTime? datetime,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chat_ref': chatRef,
      'message': message,
      'datetime': datetime,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessagesRecordDocumentEquality
    implements Equality<ChatMessagesRecord> {
  const ChatMessagesRecordDocumentEquality();

  @override
  bool equals(ChatMessagesRecord? e1, ChatMessagesRecord? e2) {
    return e1?.chatRef == e2?.chatRef &&
        e1?.message == e2?.message &&
        e1?.datetime == e2?.datetime &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(ChatMessagesRecord? e) => const ListEquality()
      .hash([e?.chatRef, e?.message, e?.datetime, e?.createdBy]);

  @override
  bool isValidKey(Object? o) => o is ChatMessagesRecord;
}
