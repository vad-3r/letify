import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SecurityGuardsRecord extends FirestoreRecord {
  SecurityGuardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "guard_id" field.
  DocumentReference? _guardId;
  DocumentReference? get guardId => _guardId;
  bool hasGuardId() => _guardId != null;

  // "badge_number" field.
  String? _badgeNumber;
  String get badgeNumber => _badgeNumber ?? '';
  bool hasBadgeNumber() => _badgeNumber != null;

  // "hire_date" field.
  DateTime? _hireDate;
  DateTime? get hireDate => _hireDate;
  bool hasHireDate() => _hireDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "employer" field.
  DocumentReference? _employer;
  DocumentReference? get employer => _employer;
  bool hasEmployer() => _employer != null;

  // "company_authorize" field.
  bool? _companyAuthorize;
  bool get companyAuthorize => _companyAuthorize ?? false;
  bool hasCompanyAuthorize() => _companyAuthorize != null;

  // "notification_sent" field.
  bool? _notificationSent;
  bool get notificationSent => _notificationSent ?? false;
  bool hasNotificationSent() => _notificationSent != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _guardId = snapshotData['guard_id'] as DocumentReference?;
    _badgeNumber = snapshotData['badge_number'] as String?;
    _hireDate = snapshotData['hire_date'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _employer = snapshotData['employer'] as DocumentReference?;
    _companyAuthorize = snapshotData['company_authorize'] as bool?;
    _notificationSent = snapshotData['notification_sent'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Security_Guards')
          : FirebaseFirestore.instance.collectionGroup('Security_Guards');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Security_Guards').doc(id);

  static Stream<SecurityGuardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SecurityGuardsRecord.fromSnapshot(s));

  static Future<SecurityGuardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SecurityGuardsRecord.fromSnapshot(s));

  static SecurityGuardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SecurityGuardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SecurityGuardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SecurityGuardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SecurityGuardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SecurityGuardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSecurityGuardsRecordData({
  DocumentReference? guardId,
  String? badgeNumber,
  DateTime? hireDate,
  String? status,
  DocumentReference? employer,
  bool? companyAuthorize,
  bool? notificationSent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'guard_id': guardId,
      'badge_number': badgeNumber,
      'hire_date': hireDate,
      'status': status,
      'employer': employer,
      'company_authorize': companyAuthorize,
      'notification_sent': notificationSent,
    }.withoutNulls,
  );

  return firestoreData;
}

class SecurityGuardsRecordDocumentEquality
    implements Equality<SecurityGuardsRecord> {
  const SecurityGuardsRecordDocumentEquality();

  @override
  bool equals(SecurityGuardsRecord? e1, SecurityGuardsRecord? e2) {
    return e1?.guardId == e2?.guardId &&
        e1?.badgeNumber == e2?.badgeNumber &&
        e1?.hireDate == e2?.hireDate &&
        e1?.status == e2?.status &&
        e1?.employer == e2?.employer &&
        e1?.companyAuthorize == e2?.companyAuthorize &&
        e1?.notificationSent == e2?.notificationSent;
  }

  @override
  int hash(SecurityGuardsRecord? e) => const ListEquality().hash([
        e?.guardId,
        e?.badgeNumber,
        e?.hireDate,
        e?.status,
        e?.employer,
        e?.companyAuthorize,
        e?.notificationSent
      ]);

  @override
  bool isValidKey(Object? o) => o is SecurityGuardsRecord;
}
