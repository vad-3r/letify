import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutomatedMessagesRecord extends FirestoreRecord {
  AutomatedMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  bool hasPeriod() => _period != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "group_chat_refs" field.
  List<DocumentReference>? _groupChatRefs;
  List<DocumentReference> get groupChatRefs => _groupChatRefs ?? const [];
  bool hasGroupChatRefs() => _groupChatRefs != null;

  // "next_send_time" field.
  DateTime? _nextSendTime;
  DateTime? get nextSendTime => _nextSendTime;
  bool hasNextSendTime() => _nextSendTime != null;

  // "last_send_time" field.
  DateTime? _lastSendTime;
  DateTime? get lastSendTime => _lastSendTime;
  bool hasLastSendTime() => _lastSendTime != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "total_sent" field.
  int? _totalSent;
  int get totalSent => _totalSent ?? 0;
  bool hasTotalSent() => _totalSent != null;

  // "scheduled_time" field.
  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _scheduledTime;
  bool hasScheduledTime() => _scheduledTime != null;

  // "day_of_week_string" field.
  String? _dayOfWeekString;
  String get dayOfWeekString => _dayOfWeekString ?? '';
  bool hasDayOfWeekString() => _dayOfWeekString != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _period = snapshotData['period'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _isActive = snapshotData['is_active'] as bool?;
    _groupChatRefs = getDataList(snapshotData['group_chat_refs']);
    _nextSendTime = snapshotData['next_send_time'] as DateTime?;
    _lastSendTime = snapshotData['last_send_time'] as DateTime?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _totalSent = castToType<int>(snapshotData['total_sent']);
    _scheduledTime = snapshotData['scheduled_time'] as DateTime?;
    _dayOfWeekString = snapshotData['day_of_week_string'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Automated_Messages');

  static Stream<AutomatedMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AutomatedMessagesRecord.fromSnapshot(s));

  static Future<AutomatedMessagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AutomatedMessagesRecord.fromSnapshot(s));

  static AutomatedMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AutomatedMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AutomatedMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AutomatedMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AutomatedMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AutomatedMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAutomatedMessagesRecordData({
  String? message,
  String? period,
  DocumentReference? userId,
  bool? isActive,
  DateTime? nextSendTime,
  DateTime? lastSendTime,
  DateTime? createdAt,
  int? totalSent,
  DateTime? scheduledTime,
  String? dayOfWeekString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'period': period,
      'user_id': userId,
      'is_active': isActive,
      'next_send_time': nextSendTime,
      'last_send_time': lastSendTime,
      'created_at': createdAt,
      'total_sent': totalSent,
      'scheduled_time': scheduledTime,
      'day_of_week_string': dayOfWeekString,
    }.withoutNulls,
  );

  return firestoreData;
}

class AutomatedMessagesRecordDocumentEquality
    implements Equality<AutomatedMessagesRecord> {
  const AutomatedMessagesRecordDocumentEquality();

  @override
  bool equals(AutomatedMessagesRecord? e1, AutomatedMessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.message == e2?.message &&
        e1?.period == e2?.period &&
        e1?.userId == e2?.userId &&
        e1?.isActive == e2?.isActive &&
        listEquality.equals(e1?.groupChatRefs, e2?.groupChatRefs) &&
        e1?.nextSendTime == e2?.nextSendTime &&
        e1?.lastSendTime == e2?.lastSendTime &&
        e1?.createdAt == e2?.createdAt &&
        e1?.totalSent == e2?.totalSent &&
        e1?.scheduledTime == e2?.scheduledTime &&
        e1?.dayOfWeekString == e2?.dayOfWeekString;
  }

  @override
  int hash(AutomatedMessagesRecord? e) => const ListEquality().hash([
        e?.message,
        e?.period,
        e?.userId,
        e?.isActive,
        e?.groupChatRefs,
        e?.nextSendTime,
        e?.lastSendTime,
        e?.createdAt,
        e?.totalSent,
        e?.scheduledTime,
        e?.dayOfWeekString
      ]);

  @override
  bool isValidKey(Object? o) => o is AutomatedMessagesRecord;
}
