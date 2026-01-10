import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketLodgingRecord extends FirestoreRecord {
  TicketLodgingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "redrabbit_ref" field.
  String? _redrabbitRef;
  String get redrabbitRef => _redrabbitRef ?? '';
  bool hasRedrabbitRef() => _redrabbitRef != null;

  // "ticket_date" field.
  DateTime? _ticketDate;
  DateTime? get ticketDate => _ticketDate;
  bool hasTicketDate() => _ticketDate != null;

  // "ticket_owner" field.
  DocumentReference? _ticketOwner;
  DocumentReference? get ticketOwner => _ticketOwner;
  bool hasTicketOwner() => _ticketOwner != null;

  // "ticket_status" field.
  String? _ticketStatus;
  String get ticketStatus => _ticketStatus ?? '';
  bool hasTicketStatus() => _ticketStatus != null;

  // "completion_comment" field.
  String? _completionComment;
  String get completionComment => _completionComment ?? '';
  bool hasCompletionComment() => _completionComment != null;

  // "landlords" field.
  List<DocumentReference>? _landlords;
  List<DocumentReference> get landlords => _landlords ?? const [];
  bool hasLandlords() => _landlords != null;

  void _initializeFields() {
    _redrabbitRef = snapshotData['redrabbit_ref'] as String?;
    _ticketDate = snapshotData['ticket_date'] as DateTime?;
    _ticketOwner = snapshotData['ticket_owner'] as DocumentReference?;
    _ticketStatus = snapshotData['ticket_status'] as String?;
    _completionComment = snapshotData['completion_comment'] as String?;
    _landlords = getDataList(snapshotData['landlords']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ticket_Lodging');

  static Stream<TicketLodgingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketLodgingRecord.fromSnapshot(s));

  static Future<TicketLodgingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketLodgingRecord.fromSnapshot(s));

  static TicketLodgingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketLodgingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketLodgingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketLodgingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketLodgingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketLodgingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketLodgingRecordData({
  String? redrabbitRef,
  DateTime? ticketDate,
  DocumentReference? ticketOwner,
  String? ticketStatus,
  String? completionComment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'redrabbit_ref': redrabbitRef,
      'ticket_date': ticketDate,
      'ticket_owner': ticketOwner,
      'ticket_status': ticketStatus,
      'completion_comment': completionComment,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketLodgingRecordDocumentEquality
    implements Equality<TicketLodgingRecord> {
  const TicketLodgingRecordDocumentEquality();

  @override
  bool equals(TicketLodgingRecord? e1, TicketLodgingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.redrabbitRef == e2?.redrabbitRef &&
        e1?.ticketDate == e2?.ticketDate &&
        e1?.ticketOwner == e2?.ticketOwner &&
        e1?.ticketStatus == e2?.ticketStatus &&
        e1?.completionComment == e2?.completionComment &&
        listEquality.equals(e1?.landlords, e2?.landlords);
  }

  @override
  int hash(TicketLodgingRecord? e) => const ListEquality().hash([
        e?.redrabbitRef,
        e?.ticketDate,
        e?.ticketOwner,
        e?.ticketStatus,
        e?.completionComment,
        e?.landlords
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketLodgingRecord;
}
