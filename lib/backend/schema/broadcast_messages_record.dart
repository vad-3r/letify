import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BroadcastMessagesRecord extends FirestoreRecord {
  BroadcastMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "broadcast_id" field.
  DocumentReference? _broadcastId;
  DocumentReference? get broadcastId => _broadcastId;
  bool hasBroadcastId() => _broadcastId != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "unread_user_list" field.
  List<DocumentReference>? _unreadUserList;
  List<DocumentReference> get unreadUserList => _unreadUserList ?? const [];
  bool hasUnreadUserList() => _unreadUserList != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "current_location" field.
  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  bool hasCurrentLocation() => _currentLocation != null;

  // "tracking_active" field.
  bool? _trackingActive;
  bool get trackingActive => _trackingActive ?? false;
  bool hasTrackingActive() => _trackingActive != null;

  // "fileURL" field.
  String? _fileURL;
  String get fileURL => _fileURL ?? '';
  bool hasFileURL() => _fileURL != null;

  // "reply_text" field.
  String? _replyText;
  String get replyText => _replyText ?? '';
  bool hasReplyText() => _replyText != null;

  // "user_replied" field.
  DocumentReference? _userReplied;
  DocumentReference? get userReplied => _userReplied;
  bool hasUserReplied() => _userReplied != null;

  // "pdf" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  bool hasPdf() => _pdf != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _broadcastId = snapshotData['broadcast_id'] as DocumentReference?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _unreadUserList = getDataList(snapshotData['unread_user_list']);
    _file = snapshotData['file'] as String?;
    _currentLocation = snapshotData['current_location'] as LatLng?;
    _trackingActive = snapshotData['tracking_active'] as bool?;
    _fileURL = snapshotData['fileURL'] as String?;
    _replyText = snapshotData['reply_text'] as String?;
    _userReplied = snapshotData['user_replied'] as DocumentReference?;
    _pdf = snapshotData['pdf'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Broadcast_Messages')
          : FirebaseFirestore.instance.collectionGroup('Broadcast_Messages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Broadcast_Messages').doc(id);

  static Stream<BroadcastMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BroadcastMessagesRecord.fromSnapshot(s));

  static Future<BroadcastMessagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BroadcastMessagesRecord.fromSnapshot(s));

  static BroadcastMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BroadcastMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BroadcastMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BroadcastMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BroadcastMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BroadcastMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBroadcastMessagesRecordData({
  DocumentReference? broadcastId,
  DocumentReference? sender,
  String? message,
  DateTime? timestamp,
  String? file,
  LatLng? currentLocation,
  bool? trackingActive,
  String? fileURL,
  String? replyText,
  DocumentReference? userReplied,
  String? pdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'broadcast_id': broadcastId,
      'sender': sender,
      'message': message,
      'timestamp': timestamp,
      'file': file,
      'current_location': currentLocation,
      'tracking_active': trackingActive,
      'fileURL': fileURL,
      'reply_text': replyText,
      'user_replied': userReplied,
      'pdf': pdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class BroadcastMessagesRecordDocumentEquality
    implements Equality<BroadcastMessagesRecord> {
  const BroadcastMessagesRecordDocumentEquality();

  @override
  bool equals(BroadcastMessagesRecord? e1, BroadcastMessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.broadcastId == e2?.broadcastId &&
        e1?.sender == e2?.sender &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.unreadUserList, e2?.unreadUserList) &&
        e1?.file == e2?.file &&
        e1?.currentLocation == e2?.currentLocation &&
        e1?.trackingActive == e2?.trackingActive &&
        e1?.fileURL == e2?.fileURL &&
        e1?.replyText == e2?.replyText &&
        e1?.userReplied == e2?.userReplied &&
        e1?.pdf == e2?.pdf;
  }

  @override
  int hash(BroadcastMessagesRecord? e) => const ListEquality().hash([
        e?.broadcastId,
        e?.sender,
        e?.message,
        e?.timestamp,
        e?.unreadUserList,
        e?.file,
        e?.currentLocation,
        e?.trackingActive,
        e?.fileURL,
        e?.replyText,
        e?.userReplied,
        e?.pdf
      ]);

  @override
  bool isValidKey(Object? o) => o is BroadcastMessagesRecord;
}
