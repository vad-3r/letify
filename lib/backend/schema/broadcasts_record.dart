import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BroadcastsRecord extends FirestoreRecord {
  BroadcastsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sender_id" field.
  DocumentReference? _senderId;
  DocumentReference? get senderId => _senderId;
  bool hasSenderId() => _senderId != null;

  // "broadcast_name" field.
  String? _broadcastName;
  String get broadcastName => _broadcastName ?? '';
  bool hasBroadcastName() => _broadcastName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "recipients" field.
  List<DocumentReference>? _recipients;
  List<DocumentReference> get recipients => _recipients ?? const [];
  bool hasRecipients() => _recipients != null;

  // "broadcast_id" field.
  String? _broadcastId;
  String get broadcastId => _broadcastId ?? '';
  bool hasBroadcastId() => _broadcastId != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "unread_users" field.
  List<DocumentReference>? _unreadUsers;
  List<DocumentReference> get unreadUsers => _unreadUsers ?? const [];
  bool hasUnreadUsers() => _unreadUsers != null;

  // "last_message_owner" field.
  DocumentReference? _lastMessageOwner;
  DocumentReference? get lastMessageOwner => _lastMessageOwner;
  bool hasLastMessageOwner() => _lastMessageOwner != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "last_message_sent_ref" field.
  DocumentReference? _lastMessageSentRef;
  DocumentReference? get lastMessageSentRef => _lastMessageSentRef;
  bool hasLastMessageSentRef() => _lastMessageSentRef != null;

  // "property_ids" field.
  List<DocumentReference>? _propertyIds;
  List<DocumentReference> get propertyIds => _propertyIds ?? const [];
  bool hasPropertyIds() => _propertyIds != null;

  // "unread_messages" field.
  List<DocumentReference>? _unreadMessages;
  List<DocumentReference> get unreadMessages => _unreadMessages ?? const [];
  bool hasUnreadMessages() => _unreadMessages != null;

  // "num_of_recipients" field.
  int? _numOfRecipients;
  int get numOfRecipients => _numOfRecipients ?? 0;
  bool hasNumOfRecipients() => _numOfRecipients != null;

  // "group_type" field.
  String? _groupType;
  String get groupType => _groupType ?? '';
  bool hasGroupType() => _groupType != null;

  // "muted_users" field.
  List<DocumentReference>? _mutedUsers;
  List<DocumentReference> get mutedUsers => _mutedUsers ?? const [];
  bool hasMutedUsers() => _mutedUsers != null;

  // "blocked_from_other_users" field.
  List<DocumentReference>? _blockedFromOtherUsers;
  List<DocumentReference> get blockedFromOtherUsers =>
      _blockedFromOtherUsers ?? const [];
  bool hasBlockedFromOtherUsers() => _blockedFromOtherUsers != null;

  void _initializeFields() {
    _senderId = snapshotData['sender_id'] as DocumentReference?;
    _broadcastName = snapshotData['broadcast_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _recipients = getDataList(snapshotData['recipients']);
    _broadcastId = snapshotData['broadcast_id'] as String?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _unreadUsers = getDataList(snapshotData['unread_users']);
    _lastMessageOwner =
        snapshotData['last_message_owner'] as DocumentReference?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _lastMessageSentRef =
        snapshotData['last_message_sent_ref'] as DocumentReference?;
    _propertyIds = getDataList(snapshotData['property_ids']);
    _unreadMessages = getDataList(snapshotData['unread_messages']);
    _numOfRecipients = castToType<int>(snapshotData['num_of_recipients']);
    _groupType = snapshotData['group_type'] as String?;
    _mutedUsers = getDataList(snapshotData['muted_users']);
    _blockedFromOtherUsers =
        getDataList(snapshotData['blocked_from_other_users']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Broadcasts');

  static Stream<BroadcastsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BroadcastsRecord.fromSnapshot(s));

  static Future<BroadcastsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BroadcastsRecord.fromSnapshot(s));

  static BroadcastsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BroadcastsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BroadcastsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BroadcastsRecord._(reference, mapFromFirestore(data));

  static BroadcastsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      BroadcastsRecord.getDocumentFromData(
        {
          'sender_id': convertAlgoliaParam(
            snapshot.data['sender_id'],
            ParamType.DocumentReference,
            false,
          ),
          'broadcast_name': snapshot.data['broadcast_name'],
          'created_at': convertAlgoliaParam(
            snapshot.data['created_at'],
            ParamType.DateTime,
            false,
          ),
          'recipients': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['recipients'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'broadcast_id': snapshot.data['broadcast_id'],
          'last_message': snapshot.data['last_message'],
          'last_message_time': convertAlgoliaParam(
            snapshot.data['last_message_time'],
            ParamType.DateTime,
            false,
          ),
          'unread_users': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['unread_users'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'last_message_owner': convertAlgoliaParam(
            snapshot.data['last_message_owner'],
            ParamType.DocumentReference,
            false,
          ),
          'property_id': convertAlgoliaParam(
            snapshot.data['property_id'],
            ParamType.DocumentReference,
            false,
          ),
          'last_message_sent_ref': convertAlgoliaParam(
            snapshot.data['last_message_sent_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'property_ids': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['property_ids'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'unread_messages': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['unread_messages'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'num_of_recipients': convertAlgoliaParam(
            snapshot.data['num_of_recipients'],
            ParamType.int,
            false,
          ),
          'group_type': snapshot.data['group_type'],
          'muted_users': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['muted_users'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'blocked_from_other_users': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['blocked_from_other_users'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
        },
        BroadcastsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<BroadcastsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Broadcasts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'BroadcastsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BroadcastsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBroadcastsRecordData({
  DocumentReference? senderId,
  String? broadcastName,
  DateTime? createdAt,
  String? broadcastId,
  String? lastMessage,
  DateTime? lastMessageTime,
  DocumentReference? lastMessageOwner,
  DocumentReference? propertyId,
  DocumentReference? lastMessageSentRef,
  int? numOfRecipients,
  String? groupType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender_id': senderId,
      'broadcast_name': broadcastName,
      'created_at': createdAt,
      'broadcast_id': broadcastId,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
      'last_message_owner': lastMessageOwner,
      'property_id': propertyId,
      'last_message_sent_ref': lastMessageSentRef,
      'num_of_recipients': numOfRecipients,
      'group_type': groupType,
    }.withoutNulls,
  );

  return firestoreData;
}

class BroadcastsRecordDocumentEquality implements Equality<BroadcastsRecord> {
  const BroadcastsRecordDocumentEquality();

  @override
  bool equals(BroadcastsRecord? e1, BroadcastsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.senderId == e2?.senderId &&
        e1?.broadcastName == e2?.broadcastName &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.recipients, e2?.recipients) &&
        e1?.broadcastId == e2?.broadcastId &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        listEquality.equals(e1?.unreadUsers, e2?.unreadUsers) &&
        e1?.lastMessageOwner == e2?.lastMessageOwner &&
        e1?.propertyId == e2?.propertyId &&
        e1?.lastMessageSentRef == e2?.lastMessageSentRef &&
        listEquality.equals(e1?.propertyIds, e2?.propertyIds) &&
        listEquality.equals(e1?.unreadMessages, e2?.unreadMessages) &&
        e1?.numOfRecipients == e2?.numOfRecipients &&
        e1?.groupType == e2?.groupType &&
        listEquality.equals(e1?.mutedUsers, e2?.mutedUsers) &&
        listEquality.equals(
            e1?.blockedFromOtherUsers, e2?.blockedFromOtherUsers);
  }

  @override
  int hash(BroadcastsRecord? e) => const ListEquality().hash([
        e?.senderId,
        e?.broadcastName,
        e?.createdAt,
        e?.recipients,
        e?.broadcastId,
        e?.lastMessage,
        e?.lastMessageTime,
        e?.unreadUsers,
        e?.lastMessageOwner,
        e?.propertyId,
        e?.lastMessageSentRef,
        e?.propertyIds,
        e?.unreadMessages,
        e?.numOfRecipients,
        e?.groupType,
        e?.mutedUsers,
        e?.blockedFromOtherUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is BroadcastsRecord;
}
