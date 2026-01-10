import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeletedAccountsRecord extends FirestoreRecord {
  DeletedAccountsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "delete_reason" field.
  String? _deleteReason;
  String get deleteReason => _deleteReason ?? '';
  bool hasDeleteReason() => _deleteReason != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  void _initializeFields() {
    _deleteReason = snapshotData['delete_reason'] as String?;
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Deleted_Accounts');

  static Stream<DeletedAccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeletedAccountsRecord.fromSnapshot(s));

  static Future<DeletedAccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeletedAccountsRecord.fromSnapshot(s));

  static DeletedAccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeletedAccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeletedAccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeletedAccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeletedAccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeletedAccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeletedAccountsRecordData({
  String? deleteReason,
  String? email,
  String? name,
  String? surname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'delete_reason': deleteReason,
      'email': email,
      'name': name,
      'surname': surname,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeletedAccountsRecordDocumentEquality
    implements Equality<DeletedAccountsRecord> {
  const DeletedAccountsRecordDocumentEquality();

  @override
  bool equals(DeletedAccountsRecord? e1, DeletedAccountsRecord? e2) {
    return e1?.deleteReason == e2?.deleteReason &&
        e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        e1?.surname == e2?.surname;
  }

  @override
  int hash(DeletedAccountsRecord? e) => const ListEquality()
      .hash([e?.deleteReason, e?.email, e?.name, e?.surname]);

  @override
  bool isValidKey(Object? o) => o is DeletedAccountsRecord;
}
