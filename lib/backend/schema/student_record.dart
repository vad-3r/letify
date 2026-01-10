import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentRecord extends FirestoreRecord {
  StudentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "student_number" field.
  String? _studentNumber;
  String get studentNumber => _studentNumber ?? '';
  bool hasStudentNumber() => _studentNumber != null;

  // "student_dateofbirth" field.
  DateTime? _studentDateofbirth;
  DateTime? get studentDateofbirth => _studentDateofbirth;
  bool hasStudentDateofbirth() => _studentDateofbirth != null;

  // "student_street_address" field.
  String? _studentStreetAddress;
  String get studentStreetAddress => _studentStreetAddress ?? '';
  bool hasStudentStreetAddress() => _studentStreetAddress != null;

  // "student_suburb" field.
  String? _studentSuburb;
  String get studentSuburb => _studentSuburb ?? '';
  bool hasStudentSuburb() => _studentSuburb != null;

  // "student_town" field.
  String? _studentTown;
  String get studentTown => _studentTown ?? '';
  bool hasStudentTown() => _studentTown != null;

  // "student_city" field.
  String? _studentCity;
  String get studentCity => _studentCity ?? '';
  bool hasStudentCity() => _studentCity != null;

  // "student_institution" field.
  String? _studentInstitution;
  String get studentInstitution => _studentInstitution ?? '';
  bool hasStudentInstitution() => _studentInstitution != null;

  // "accountPassword" field.
  String? _accountPassword;
  String get accountPassword => _accountPassword ?? '';
  bool hasAccountPassword() => _accountPassword != null;

  // "student_id" field.
  DocumentReference? _studentId;
  DocumentReference? get studentId => _studentId;
  bool hasStudentId() => _studentId != null;

  // "student_IDNumber" field.
  String? _studentIDNumber;
  String get studentIDNumber => _studentIDNumber ?? '';
  bool hasStudentIDNumber() => _studentIDNumber != null;

  // "linked_to_property" field.
  bool? _linkedToProperty;
  bool get linkedToProperty => _linkedToProperty ?? false;
  bool hasLinkedToProperty() => _linkedToProperty != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "property_name" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "tenant_name" field.
  String? _tenantName;
  String get tenantName => _tenantName ?? '';
  bool hasTenantName() => _tenantName != null;

  // "tenant_surname" field.
  String? _tenantSurname;
  String get tenantSurname => _tenantSurname ?? '';
  bool hasTenantSurname() => _tenantSurname != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "room_occupied" field.
  String? _roomOccupied;
  String get roomOccupied => _roomOccupied ?? '';
  bool hasRoomOccupied() => _roomOccupied != null;

  // "warning_count" field.
  int? _warningCount;
  int get warningCount => _warningCount ?? 0;
  bool hasWarningCount() => _warningCount != null;

  // "fine" field.
  double? _fine;
  double get fine => _fine ?? 0.0;
  bool hasFine() => _fine != null;

  // "warning" field.
  List<String>? _warning;
  List<String> get warning => _warning ?? const [];
  bool hasWarning() => _warning != null;

  // "has_booked" field.
  bool? _hasBooked;
  bool get hasBooked => _hasBooked ?? false;
  bool hasHasBooked() => _hasBooked != null;

  // "booked_owner" field.
  DocumentReference? _bookedOwner;
  DocumentReference? get bookedOwner => _bookedOwner;
  bool hasBookedOwner() => _bookedOwner != null;

  // "booked_property_id" field.
  DocumentReference? _bookedPropertyId;
  DocumentReference? get bookedPropertyId => _bookedPropertyId;
  bool hasBookedPropertyId() => _bookedPropertyId != null;

  // "booked_property_name" field.
  String? _bookedPropertyName;
  String get bookedPropertyName => _bookedPropertyName ?? '';
  bool hasBookedPropertyName() => _bookedPropertyName != null;

  // "booked_room_name" field.
  String? _bookedRoomName;
  String get bookedRoomName => _bookedRoomName ?? '';
  bool hasBookedRoomName() => _bookedRoomName != null;

  // "booked_room" field.
  DocumentReference? _bookedRoom;
  DocumentReference? get bookedRoom => _bookedRoom;
  bool hasBookedRoom() => _bookedRoom != null;

  // "room_id" field.
  DocumentReference? _roomId;
  DocumentReference? get roomId => _roomId;
  bool hasRoomId() => _roomId != null;

  void _initializeFields() {
    _studentNumber = snapshotData['student_number'] as String?;
    _studentDateofbirth = snapshotData['student_dateofbirth'] as DateTime?;
    _studentStreetAddress = snapshotData['student_street_address'] as String?;
    _studentSuburb = snapshotData['student_suburb'] as String?;
    _studentTown = snapshotData['student_town'] as String?;
    _studentCity = snapshotData['student_city'] as String?;
    _studentInstitution = snapshotData['student_institution'] as String?;
    _accountPassword = snapshotData['accountPassword'] as String?;
    _studentId = snapshotData['student_id'] as DocumentReference?;
    _studentIDNumber = snapshotData['student_IDNumber'] as String?;
    _linkedToProperty = snapshotData['linked_to_property'] as bool?;
    _gender = snapshotData['gender'] as String?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _propertyName = snapshotData['property_name'] as String?;
    _tenantName = snapshotData['tenant_name'] as String?;
    _tenantSurname = snapshotData['tenant_surname'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _roomOccupied = snapshotData['room_occupied'] as String?;
    _warningCount = castToType<int>(snapshotData['warning_count']);
    _fine = castToType<double>(snapshotData['fine']);
    _warning = getDataList(snapshotData['warning']);
    _hasBooked = snapshotData['has_booked'] as bool?;
    _bookedOwner = snapshotData['booked_owner'] as DocumentReference?;
    _bookedPropertyId =
        snapshotData['booked_property_id'] as DocumentReference?;
    _bookedPropertyName = snapshotData['booked_property_name'] as String?;
    _bookedRoomName = snapshotData['booked_room_name'] as String?;
    _bookedRoom = snapshotData['booked_room'] as DocumentReference?;
    _roomId = snapshotData['room_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Student');

  static Stream<StudentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentRecord.fromSnapshot(s));

  static Future<StudentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentRecord.fromSnapshot(s));

  static StudentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentRecordData({
  String? studentNumber,
  DateTime? studentDateofbirth,
  String? studentStreetAddress,
  String? studentSuburb,
  String? studentTown,
  String? studentCity,
  String? studentInstitution,
  String? accountPassword,
  DocumentReference? studentId,
  String? studentIDNumber,
  bool? linkedToProperty,
  String? gender,
  DocumentReference? propertyId,
  String? propertyName,
  String? tenantName,
  String? tenantSurname,
  DocumentReference? owner,
  String? roomOccupied,
  int? warningCount,
  double? fine,
  bool? hasBooked,
  DocumentReference? bookedOwner,
  DocumentReference? bookedPropertyId,
  String? bookedPropertyName,
  String? bookedRoomName,
  DocumentReference? bookedRoom,
  DocumentReference? roomId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student_number': studentNumber,
      'student_dateofbirth': studentDateofbirth,
      'student_street_address': studentStreetAddress,
      'student_suburb': studentSuburb,
      'student_town': studentTown,
      'student_city': studentCity,
      'student_institution': studentInstitution,
      'accountPassword': accountPassword,
      'student_id': studentId,
      'student_IDNumber': studentIDNumber,
      'linked_to_property': linkedToProperty,
      'gender': gender,
      'property_id': propertyId,
      'property_name': propertyName,
      'tenant_name': tenantName,
      'tenant_surname': tenantSurname,
      'owner': owner,
      'room_occupied': roomOccupied,
      'warning_count': warningCount,
      'fine': fine,
      'has_booked': hasBooked,
      'booked_owner': bookedOwner,
      'booked_property_id': bookedPropertyId,
      'booked_property_name': bookedPropertyName,
      'booked_room_name': bookedRoomName,
      'booked_room': bookedRoom,
      'room_id': roomId,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentRecordDocumentEquality implements Equality<StudentRecord> {
  const StudentRecordDocumentEquality();

  @override
  bool equals(StudentRecord? e1, StudentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.studentNumber == e2?.studentNumber &&
        e1?.studentDateofbirth == e2?.studentDateofbirth &&
        e1?.studentStreetAddress == e2?.studentStreetAddress &&
        e1?.studentSuburb == e2?.studentSuburb &&
        e1?.studentTown == e2?.studentTown &&
        e1?.studentCity == e2?.studentCity &&
        e1?.studentInstitution == e2?.studentInstitution &&
        e1?.accountPassword == e2?.accountPassword &&
        e1?.studentId == e2?.studentId &&
        e1?.studentIDNumber == e2?.studentIDNumber &&
        e1?.linkedToProperty == e2?.linkedToProperty &&
        e1?.gender == e2?.gender &&
        e1?.propertyId == e2?.propertyId &&
        e1?.propertyName == e2?.propertyName &&
        e1?.tenantName == e2?.tenantName &&
        e1?.tenantSurname == e2?.tenantSurname &&
        e1?.owner == e2?.owner &&
        e1?.roomOccupied == e2?.roomOccupied &&
        e1?.warningCount == e2?.warningCount &&
        e1?.fine == e2?.fine &&
        listEquality.equals(e1?.warning, e2?.warning) &&
        e1?.hasBooked == e2?.hasBooked &&
        e1?.bookedOwner == e2?.bookedOwner &&
        e1?.bookedPropertyId == e2?.bookedPropertyId &&
        e1?.bookedPropertyName == e2?.bookedPropertyName &&
        e1?.bookedRoomName == e2?.bookedRoomName &&
        e1?.bookedRoom == e2?.bookedRoom &&
        e1?.roomId == e2?.roomId;
  }

  @override
  int hash(StudentRecord? e) => const ListEquality().hash([
        e?.studentNumber,
        e?.studentDateofbirth,
        e?.studentStreetAddress,
        e?.studentSuburb,
        e?.studentTown,
        e?.studentCity,
        e?.studentInstitution,
        e?.accountPassword,
        e?.studentId,
        e?.studentIDNumber,
        e?.linkedToProperty,
        e?.gender,
        e?.propertyId,
        e?.propertyName,
        e?.tenantName,
        e?.tenantSurname,
        e?.owner,
        e?.roomOccupied,
        e?.warningCount,
        e?.fine,
        e?.warning,
        e?.hasBooked,
        e?.bookedOwner,
        e?.bookedPropertyId,
        e?.bookedPropertyName,
        e?.bookedRoomName,
        e?.bookedRoom,
        e?.roomId
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentRecord;
}
