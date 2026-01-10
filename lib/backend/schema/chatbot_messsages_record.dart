import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatbotMesssagesRecord extends FirestoreRecord {
  ChatbotMesssagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "sent_at" field.
  DateTime? _sentAt;
  DateTime? get sentAt => _sentAt;
  bool hasSentAt() => _sentAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _role = snapshotData['role'] as String?;
    _message = snapshotData['message'] as String?;
    _sentAt = snapshotData['sent_at'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chatbot_messsages')
          : FirebaseFirestore.instance.collectionGroup('chatbot_messsages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chatbot_messsages').doc(id);

  static Stream<ChatbotMesssagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatbotMesssagesRecord.fromSnapshot(s));

  static Future<ChatbotMesssagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ChatbotMesssagesRecord.fromSnapshot(s));

  static ChatbotMesssagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatbotMesssagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatbotMesssagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatbotMesssagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatbotMesssagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatbotMesssagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatbotMesssagesRecordData({
  String? role,
  String? message,
  DateTime? sentAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role': role,
      'message': message,
      'sent_at': sentAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatbotMesssagesRecordDocumentEquality
    implements Equality<ChatbotMesssagesRecord> {
  const ChatbotMesssagesRecordDocumentEquality();

  @override
  bool equals(ChatbotMesssagesRecord? e1, ChatbotMesssagesRecord? e2) {
    return e1?.role == e2?.role &&
        e1?.message == e2?.message &&
        e1?.sentAt == e2?.sentAt;
  }

  @override
  int hash(ChatbotMesssagesRecord? e) =>
      const ListEquality().hash([e?.role, e?.message, e?.sentAt]);

  @override
  bool isValidKey(Object? o) => o is ChatbotMesssagesRecord;
}
