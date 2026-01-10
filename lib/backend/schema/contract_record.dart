import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContractRecord extends FirestoreRecord {
  ContractRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lessor_name" field.
  String? _lessorName;
  String get lessorName => _lessorName ?? '';
  bool hasLessorName() => _lessorName != null;

  // "id_num" field.
  String? _idNum;
  String get idNum => _idNum ?? '';
  bool hasIdNum() => _idNum != null;

  // "street_address" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  bool hasStreetAddress() => _streetAddress != null;

  // "suburb" field.
  String? _suburb;
  String get suburb => _suburb ?? '';
  bool hasSuburb() => _suburb != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "e_mail" field.
  String? _eMail;
  String get eMail => _eMail ?? '';
  bool hasEMail() => _eMail != null;

  // "tel_phone" field.
  String? _telPhone;
  String get telPhone => _telPhone ?? '';
  bool hasTelPhone() => _telPhone != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "montly_rent" field.
  double? _montlyRent;
  double get montlyRent => _montlyRent ?? 0.0;
  bool hasMontlyRent() => _montlyRent != null;

  // "electricity_rules" field.
  String? _electricityRules;
  String get electricityRules => _electricityRules ?? '';
  bool hasElectricityRules() => _electricityRules != null;

  // "water_rules" field.
  String? _waterRules;
  String get waterRules => _waterRules ?? '';
  bool hasWaterRules() => _waterRules != null;

  // "lessor_signature" field.
  String? _lessorSignature;
  String get lessorSignature => _lessorSignature ?? '';
  bool hasLessorSignature() => _lessorSignature != null;

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  // "signatureimagepath" field.
  String? _signatureimagepath;
  String get signatureimagepath => _signatureimagepath ?? '';
  bool hasSignatureimagepath() => _signatureimagepath != null;

  // "room_type" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  // "contract_id" field.
  String? _contractId;
  String get contractId => _contractId ?? '';
  bool hasContractId() => _contractId != null;

  // "top_ten1" field.
  String? _topTen1;
  String get topTen1 => _topTen1 ?? '';
  bool hasTopTen1() => _topTen1 != null;

  // "top_ten2" field.
  String? _topTen2;
  String get topTen2 => _topTen2 ?? '';
  bool hasTopTen2() => _topTen2 != null;

  // "top_ten3" field.
  String? _topTen3;
  String get topTen3 => _topTen3 ?? '';
  bool hasTopTen3() => _topTen3 != null;

  // "top_ten4" field.
  String? _topTen4;
  String get topTen4 => _topTen4 ?? '';
  bool hasTopTen4() => _topTen4 != null;

  // "top_ten5" field.
  String? _topTen5;
  String get topTen5 => _topTen5 ?? '';
  bool hasTopTen5() => _topTen5 != null;

  // "top_ten6" field.
  String? _topTen6;
  String get topTen6 => _topTen6 ?? '';
  bool hasTopTen6() => _topTen6 != null;

  // "top_ten7" field.
  String? _topTen7;
  String get topTen7 => _topTen7 ?? '';
  bool hasTopTen7() => _topTen7 != null;

  // "top_ten8" field.
  String? _topTen8;
  String get topTen8 => _topTen8 ?? '';
  bool hasTopTen8() => _topTen8 != null;

  // "top_ten9" field.
  String? _topTen9;
  String get topTen9 => _topTen9 ?? '';
  bool hasTopTen9() => _topTen9 != null;

  // "top_ten10" field.
  String? _topTen10;
  String get topTen10 => _topTen10 ?? '';
  bool hasTopTen10() => _topTen10 != null;

  // "lessee_postal" field.
  String? _lesseePostal;
  String get lesseePostal => _lesseePostal ?? '';
  bool hasLesseePostal() => _lesseePostal != null;

  // "lessee_tel" field.
  String? _lesseeTel;
  String get lesseeTel => _lesseeTel ?? '';
  bool hasLesseeTel() => _lesseeTel != null;

  // "tenant_initial" field.
  String? _tenantInitial;
  String get tenantInitial => _tenantInitial ?? '';
  bool hasTenantInitial() => _tenantInitial != null;

  // "lessor_initial" field.
  String? _lessorInitial;
  String get lessorInitial => _lessorInitial ?? '';
  bool hasLessorInitial() => _lessorInitial != null;

  // "lessor_initials" field.
  String? _lessorInitials;
  String get lessorInitials => _lessorInitials ?? '';
  bool hasLessorInitials() => _lessorInitials != null;

  // "tenant_initials" field.
  String? _tenantInitials;
  String get tenantInitials => _tenantInitials ?? '';
  bool hasTenantInitials() => _tenantInitials != null;

  // "tenants_linked" field.
  List<DocumentReference>? _tenantsLinked;
  List<DocumentReference> get tenantsLinked => _tenantsLinked ?? const [];
  bool hasTenantsLinked() => _tenantsLinked != null;

  // "is_signed_list" field.
  List<bool>? _isSignedList;
  List<bool> get isSignedList => _isSignedList ?? const [];
  bool hasIsSignedList() => _isSignedList != null;

  // "signature_1_url" field.
  String? _signature1Url;
  String get signature1Url => _signature1Url ?? '';
  bool hasSignature1Url() => _signature1Url != null;

  // "signature_2_url" field.
  String? _signature2Url;
  String get signature2Url => _signature2Url ?? '';
  bool hasSignature2Url() => _signature2Url != null;

  // "admin_fee" field.
  double? _adminFee;
  double get adminFee => _adminFee ?? 0.0;
  bool hasAdminFee() => _adminFee != null;

  // "refundable_fee" field.
  double? _refundableFee;
  double get refundableFee => _refundableFee ?? 0.0;
  bool hasRefundableFee() => _refundableFee != null;

  // "deposit" field.
  double? _deposit;
  double get deposit => _deposit ?? 0.0;
  bool hasDeposit() => _deposit != null;

  // "key_deposit" field.
  double? _keyDeposit;
  double get keyDeposit => _keyDeposit ?? 0.0;
  bool hasKeyDeposit() => _keyDeposit != null;

  // "custom_room_type" field.
  String? _customRoomType;
  String get customRoomType => _customRoomType ?? '';
  bool hasCustomRoomType() => _customRoomType != null;

  // "contract_name" field.
  String? _contractName;
  String get contractName => _contractName ?? '';
  bool hasContractName() => _contractName != null;

  // "witness_1_image" field.
  String? _witness1Image;
  String get witness1Image => _witness1Image ?? '';
  bool hasWitness1Image() => _witness1Image != null;

  // "witness_2_image" field.
  String? _witness2Image;
  String get witness2Image => _witness2Image ?? '';
  bool hasWitness2Image() => _witness2Image != null;

  // "geyser_rules" field.
  String? _geyserRules;
  String get geyserRules => _geyserRules ?? '';
  bool hasGeyserRules() => _geyserRules != null;

  // "house_rules" field.
  String? _houseRules;
  String get houseRules => _houseRules ?? '';
  bool hasHouseRules() => _houseRules != null;

  void _initializeFields() {
    _lessorName = snapshotData['lessor_name'] as String?;
    _idNum = snapshotData['id_num'] as String?;
    _streetAddress = snapshotData['street_address'] as String?;
    _suburb = snapshotData['suburb'] as String?;
    _city = snapshotData['city'] as String?;
    _postalCode = snapshotData['postal_code'] as String?;
    _eMail = snapshotData['e_mail'] as String?;
    _telPhone = snapshotData['tel_phone'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _montlyRent = castToType<double>(snapshotData['montly_rent']);
    _electricityRules = snapshotData['electricity_rules'] as String?;
    _waterRules = snapshotData['water_rules'] as String?;
    _lessorSignature = snapshotData['lessor_signature'] as String?;
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _signatureimagepath = snapshotData['signatureimagepath'] as String?;
    _roomType = snapshotData['room_type'] as String?;
    _contractId = snapshotData['contract_id'] as String?;
    _topTen1 = snapshotData['top_ten1'] as String?;
    _topTen2 = snapshotData['top_ten2'] as String?;
    _topTen3 = snapshotData['top_ten3'] as String?;
    _topTen4 = snapshotData['top_ten4'] as String?;
    _topTen5 = snapshotData['top_ten5'] as String?;
    _topTen6 = snapshotData['top_ten6'] as String?;
    _topTen7 = snapshotData['top_ten7'] as String?;
    _topTen8 = snapshotData['top_ten8'] as String?;
    _topTen9 = snapshotData['top_ten9'] as String?;
    _topTen10 = snapshotData['top_ten10'] as String?;
    _lesseePostal = snapshotData['lessee_postal'] as String?;
    _lesseeTel = snapshotData['lessee_tel'] as String?;
    _tenantInitial = snapshotData['tenant_initial'] as String?;
    _lessorInitial = snapshotData['lessor_initial'] as String?;
    _lessorInitials = snapshotData['lessor_initials'] as String?;
    _tenantInitials = snapshotData['tenant_initials'] as String?;
    _tenantsLinked = getDataList(snapshotData['tenants_linked']);
    _isSignedList = getDataList(snapshotData['is_signed_list']);
    _signature1Url = snapshotData['signature_1_url'] as String?;
    _signature2Url = snapshotData['signature_2_url'] as String?;
    _adminFee = castToType<double>(snapshotData['admin_fee']);
    _refundableFee = castToType<double>(snapshotData['refundable_fee']);
    _deposit = castToType<double>(snapshotData['deposit']);
    _keyDeposit = castToType<double>(snapshotData['key_deposit']);
    _customRoomType = snapshotData['custom_room_type'] as String?;
    _contractName = snapshotData['contract_name'] as String?;
    _witness1Image = snapshotData['witness_1_image'] as String?;
    _witness2Image = snapshotData['witness_2_image'] as String?;
    _geyserRules = snapshotData['geyser_rules'] as String?;
    _houseRules = snapshotData['house_rules'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contract');

  static Stream<ContractRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContractRecord.fromSnapshot(s));

  static Future<ContractRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContractRecord.fromSnapshot(s));

  static ContractRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContractRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContractRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContractRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContractRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContractRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContractRecordData({
  String? lessorName,
  String? idNum,
  String? streetAddress,
  String? suburb,
  String? city,
  String? postalCode,
  String? eMail,
  String? telPhone,
  DateTime? startDate,
  DateTime? endDate,
  double? montlyRent,
  String? electricityRules,
  String? waterRules,
  String? lessorSignature,
  DocumentReference? landlordId,
  String? signatureimagepath,
  String? roomType,
  String? contractId,
  String? topTen1,
  String? topTen2,
  String? topTen3,
  String? topTen4,
  String? topTen5,
  String? topTen6,
  String? topTen7,
  String? topTen8,
  String? topTen9,
  String? topTen10,
  String? lesseePostal,
  String? lesseeTel,
  String? tenantInitial,
  String? lessorInitial,
  String? lessorInitials,
  String? tenantInitials,
  String? signature1Url,
  String? signature2Url,
  double? adminFee,
  double? refundableFee,
  double? deposit,
  double? keyDeposit,
  String? customRoomType,
  String? contractName,
  String? witness1Image,
  String? witness2Image,
  String? geyserRules,
  String? houseRules,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lessor_name': lessorName,
      'id_num': idNum,
      'street_address': streetAddress,
      'suburb': suburb,
      'city': city,
      'postal_code': postalCode,
      'e_mail': eMail,
      'tel_phone': telPhone,
      'start_date': startDate,
      'end_date': endDate,
      'montly_rent': montlyRent,
      'electricity_rules': electricityRules,
      'water_rules': waterRules,
      'lessor_signature': lessorSignature,
      'landlord_id': landlordId,
      'signatureimagepath': signatureimagepath,
      'room_type': roomType,
      'contract_id': contractId,
      'top_ten1': topTen1,
      'top_ten2': topTen2,
      'top_ten3': topTen3,
      'top_ten4': topTen4,
      'top_ten5': topTen5,
      'top_ten6': topTen6,
      'top_ten7': topTen7,
      'top_ten8': topTen8,
      'top_ten9': topTen9,
      'top_ten10': topTen10,
      'lessee_postal': lesseePostal,
      'lessee_tel': lesseeTel,
      'tenant_initial': tenantInitial,
      'lessor_initial': lessorInitial,
      'lessor_initials': lessorInitials,
      'tenant_initials': tenantInitials,
      'signature_1_url': signature1Url,
      'signature_2_url': signature2Url,
      'admin_fee': adminFee,
      'refundable_fee': refundableFee,
      'deposit': deposit,
      'key_deposit': keyDeposit,
      'custom_room_type': customRoomType,
      'contract_name': contractName,
      'witness_1_image': witness1Image,
      'witness_2_image': witness2Image,
      'geyser_rules': geyserRules,
      'house_rules': houseRules,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContractRecordDocumentEquality implements Equality<ContractRecord> {
  const ContractRecordDocumentEquality();

  @override
  bool equals(ContractRecord? e1, ContractRecord? e2) {
    const listEquality = ListEquality();
    return e1?.lessorName == e2?.lessorName &&
        e1?.idNum == e2?.idNum &&
        e1?.streetAddress == e2?.streetAddress &&
        e1?.suburb == e2?.suburb &&
        e1?.city == e2?.city &&
        e1?.postalCode == e2?.postalCode &&
        e1?.eMail == e2?.eMail &&
        e1?.telPhone == e2?.telPhone &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.montlyRent == e2?.montlyRent &&
        e1?.electricityRules == e2?.electricityRules &&
        e1?.waterRules == e2?.waterRules &&
        e1?.lessorSignature == e2?.lessorSignature &&
        e1?.landlordId == e2?.landlordId &&
        e1?.signatureimagepath == e2?.signatureimagepath &&
        e1?.roomType == e2?.roomType &&
        e1?.contractId == e2?.contractId &&
        e1?.topTen1 == e2?.topTen1 &&
        e1?.topTen2 == e2?.topTen2 &&
        e1?.topTen3 == e2?.topTen3 &&
        e1?.topTen4 == e2?.topTen4 &&
        e1?.topTen5 == e2?.topTen5 &&
        e1?.topTen6 == e2?.topTen6 &&
        e1?.topTen7 == e2?.topTen7 &&
        e1?.topTen8 == e2?.topTen8 &&
        e1?.topTen9 == e2?.topTen9 &&
        e1?.topTen10 == e2?.topTen10 &&
        e1?.lesseePostal == e2?.lesseePostal &&
        e1?.lesseeTel == e2?.lesseeTel &&
        e1?.tenantInitial == e2?.tenantInitial &&
        e1?.lessorInitial == e2?.lessorInitial &&
        e1?.lessorInitials == e2?.lessorInitials &&
        e1?.tenantInitials == e2?.tenantInitials &&
        listEquality.equals(e1?.tenantsLinked, e2?.tenantsLinked) &&
        listEquality.equals(e1?.isSignedList, e2?.isSignedList) &&
        e1?.signature1Url == e2?.signature1Url &&
        e1?.signature2Url == e2?.signature2Url &&
        e1?.adminFee == e2?.adminFee &&
        e1?.refundableFee == e2?.refundableFee &&
        e1?.deposit == e2?.deposit &&
        e1?.keyDeposit == e2?.keyDeposit &&
        e1?.customRoomType == e2?.customRoomType &&
        e1?.contractName == e2?.contractName &&
        e1?.witness1Image == e2?.witness1Image &&
        e1?.witness2Image == e2?.witness2Image &&
        e1?.geyserRules == e2?.geyserRules &&
        e1?.houseRules == e2?.houseRules;
  }

  @override
  int hash(ContractRecord? e) => const ListEquality().hash([
        e?.lessorName,
        e?.idNum,
        e?.streetAddress,
        e?.suburb,
        e?.city,
        e?.postalCode,
        e?.eMail,
        e?.telPhone,
        e?.startDate,
        e?.endDate,
        e?.montlyRent,
        e?.electricityRules,
        e?.waterRules,
        e?.lessorSignature,
        e?.landlordId,
        e?.signatureimagepath,
        e?.roomType,
        e?.contractId,
        e?.topTen1,
        e?.topTen2,
        e?.topTen3,
        e?.topTen4,
        e?.topTen5,
        e?.topTen6,
        e?.topTen7,
        e?.topTen8,
        e?.topTen9,
        e?.topTen10,
        e?.lesseePostal,
        e?.lesseeTel,
        e?.tenantInitial,
        e?.lessorInitial,
        e?.lessorInitials,
        e?.tenantInitials,
        e?.tenantsLinked,
        e?.isSignedList,
        e?.signature1Url,
        e?.signature2Url,
        e?.adminFee,
        e?.refundableFee,
        e?.deposit,
        e?.keyDeposit,
        e?.customRoomType,
        e?.contractName,
        e?.witness1Image,
        e?.witness2Image,
        e?.geyserRules,
        e?.houseRules
      ]);

  @override
  bool isValidKey(Object? o) => o is ContractRecord;
}
