import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TenantInfoRecord extends FirestoreRecord {
  TenantInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lessee_name" field.
  String? _lesseeName;
  String get lesseeName => _lesseeName ?? '';
  bool hasLesseeName() => _lesseeName != null;

  // "lessee_surname" field.
  String? _lesseeSurname;
  String get lesseeSurname => _lesseeSurname ?? '';
  bool hasLesseeSurname() => _lesseeSurname != null;

  // "lessee_dob" field.
  String? _lesseeDob;
  String get lesseeDob => _lesseeDob ?? '';
  bool hasLesseeDob() => _lesseeDob != null;

  // "lessee_id_num" field.
  String? _lesseeIdNum;
  String get lesseeIdNum => _lesseeIdNum ?? '';
  bool hasLesseeIdNum() => _lesseeIdNum != null;

  // "lessee_student_num" field.
  String? _lesseeStudentNum;
  String get lesseeStudentNum => _lesseeStudentNum ?? '';
  bool hasLesseeStudentNum() => _lesseeStudentNum != null;

  // "lessee_study_course" field.
  String? _lesseeStudyCourse;
  String get lesseeStudyCourse => _lesseeStudyCourse ?? '';
  bool hasLesseeStudyCourse() => _lesseeStudyCourse != null;

  // "lessee_yos" field.
  int? _lesseeYos;
  int get lesseeYos => _lesseeYos ?? 0;
  bool hasLesseeYos() => _lesseeYos != null;

  // "lessee_gender" field.
  String? _lesseeGender;
  String get lesseeGender => _lesseeGender ?? '';
  bool hasLesseeGender() => _lesseeGender != null;

  // "lessee_email" field.
  String? _lesseeEmail;
  String get lesseeEmail => _lesseeEmail ?? '';
  bool hasLesseeEmail() => _lesseeEmail != null;

  // "lessee_telphone" field.
  String? _lesseeTelphone;
  String get lesseeTelphone => _lesseeTelphone ?? '';
  bool hasLesseeTelphone() => _lesseeTelphone != null;

  // "lessee_street_address" field.
  String? _lesseeStreetAddress;
  String get lesseeStreetAddress => _lesseeStreetAddress ?? '';
  bool hasLesseeStreetAddress() => _lesseeStreetAddress != null;

  // "lessee_city" field.
  String? _lesseeCity;
  String get lesseeCity => _lesseeCity ?? '';
  bool hasLesseeCity() => _lesseeCity != null;

  // "lessee_province" field.
  String? _lesseeProvince;
  String get lesseeProvince => _lesseeProvince ?? '';
  bool hasLesseeProvince() => _lesseeProvince != null;

  // "lessee_postal_code" field.
  String? _lesseePostalCode;
  String get lesseePostalCode => _lesseePostalCode ?? '';
  bool hasLesseePostalCode() => _lesseePostalCode != null;

  // "lessee_po_box" field.
  String? _lesseePoBox;
  String get lesseePoBox => _lesseePoBox ?? '';
  bool hasLesseePoBox() => _lesseePoBox != null;

  // "lessee_city_po" field.
  String? _lesseeCityPo;
  String get lesseeCityPo => _lesseeCityPo ?? '';
  bool hasLesseeCityPo() => _lesseeCityPo != null;

  // "lessee_province_po" field.
  String? _lesseeProvincePo;
  String get lesseeProvincePo => _lesseeProvincePo ?? '';
  bool hasLesseeProvincePo() => _lesseeProvincePo != null;

  // "lessee_postal_code_po" field.
  String? _lesseePostalCodePo;
  String get lesseePostalCodePo => _lesseePostalCodePo ?? '';
  bool hasLesseePostalCodePo() => _lesseePostalCodePo != null;

  // "top_ten_agreement" field.
  bool? _topTenAgreement;
  bool get topTenAgreement => _topTenAgreement ?? false;
  bool hasTopTenAgreement() => _topTenAgreement != null;

  // "rental_terms_agreement" field.
  bool? _rentalTermsAgreement;
  bool get rentalTermsAgreement => _rentalTermsAgreement ?? false;
  bool hasRentalTermsAgreement() => _rentalTermsAgreement != null;

  // "annexure_b_agreement" field.
  bool? _annexureBAgreement;
  bool get annexureBAgreement => _annexureBAgreement ?? false;
  bool hasAnnexureBAgreement() => _annexureBAgreement != null;

  // "annexure_c_agreement" field.
  bool? _annexureCAgreement;
  bool get annexureCAgreement => _annexureCAgreement ?? false;
  bool hasAnnexureCAgreement() => _annexureCAgreement != null;

  // "consent_clause_agreement" field.
  bool? _consentClauseAgreement;
  bool get consentClauseAgreement => _consentClauseAgreement ?? false;
  bool hasConsentClauseAgreement() => _consentClauseAgreement != null;

  // "declaration_agreement" field.
  bool? _declarationAgreement;
  bool get declarationAgreement => _declarationAgreement ?? false;
  bool hasDeclarationAgreement() => _declarationAgreement != null;

  // "copy_of_id" field.
  String? _copyOfId;
  String get copyOfId => _copyOfId ?? '';
  bool hasCopyOfId() => _copyOfId != null;

  // "copy_of_student_card" field.
  String? _copyOfStudentCard;
  String get copyOfStudentCard => _copyOfStudentCard ?? '';
  bool hasCopyOfStudentCard() => _copyOfStudentCard != null;

  // "is_approved" field.
  bool? _isApproved;
  bool get isApproved => _isApproved ?? false;
  bool hasIsApproved() => _isApproved != null;

  // "is_signed" field.
  bool? _isSigned;
  bool get isSigned => _isSigned ?? false;
  bool hasIsSigned() => _isSigned != null;

  // "tenant_id" field.
  DocumentReference? _tenantId;
  DocumentReference? get tenantId => _tenantId;
  bool hasTenantId() => _tenantId != null;

  // "is_reviewed" field.
  bool? _isReviewed;
  bool get isReviewed => _isReviewed ?? false;
  bool hasIsReviewed() => _isReviewed != null;

  // "tenant_signature" field.
  String? _tenantSignature;
  String get tenantSignature => _tenantSignature ?? '';
  bool hasTenantSignature() => _tenantSignature != null;

  // "tenant_signature_path" field.
  String? _tenantSignaturePath;
  String get tenantSignaturePath => _tenantSignaturePath ?? '';
  bool hasTenantSignaturePath() => _tenantSignaturePath != null;

  // "portal_start_agreement" field.
  bool? _portalStartAgreement;
  bool get portalStartAgreement => _portalStartAgreement ?? false;
  bool hasPortalStartAgreement() => _portalStartAgreement != null;

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  // "prtp_name" field.
  String? _prtpName;
  String get prtpName => _prtpName ?? '';
  bool hasPrtpName() => _prtpName != null;

  // "prtp_surname" field.
  String? _prtpSurname;
  String get prtpSurname => _prtpSurname ?? '';
  bool hasPrtpSurname() => _prtpSurname != null;

  // "prtp_id_num" field.
  String? _prtpIdNum;
  String get prtpIdNum => _prtpIdNum ?? '';
  bool hasPrtpIdNum() => _prtpIdNum != null;

  // "prtp_tel" field.
  String? _prtpTel;
  String get prtpTel => _prtpTel ?? '';
  bool hasPrtpTel() => _prtpTel != null;

  // "prtp_email" field.
  String? _prtpEmail;
  String get prtpEmail => _prtpEmail ?? '';
  bool hasPrtpEmail() => _prtpEmail != null;

  // "prtp_street_address" field.
  String? _prtpStreetAddress;
  String get prtpStreetAddress => _prtpStreetAddress ?? '';
  bool hasPrtpStreetAddress() => _prtpStreetAddress != null;

  // "prtp_city" field.
  String? _prtpCity;
  String get prtpCity => _prtpCity ?? '';
  bool hasPrtpCity() => _prtpCity != null;

  // "prtp_province" field.
  String? _prtpProvince;
  String get prtpProvince => _prtpProvince ?? '';
  bool hasPrtpProvince() => _prtpProvince != null;

  // "prtp_postal_code" field.
  String? _prtpPostalCode;
  String get prtpPostalCode => _prtpPostalCode ?? '';
  bool hasPrtpPostalCode() => _prtpPostalCode != null;

  // "nok_name" field.
  String? _nokName;
  String get nokName => _nokName ?? '';
  bool hasNokName() => _nokName != null;

  // "nok_surnam" field.
  String? _nokSurnam;
  String get nokSurnam => _nokSurnam ?? '';
  bool hasNokSurnam() => _nokSurnam != null;

  // "nok_id_num" field.
  String? _nokIdNum;
  String get nokIdNum => _nokIdNum ?? '';
  bool hasNokIdNum() => _nokIdNum != null;

  // "nok_email" field.
  String? _nokEmail;
  String get nokEmail => _nokEmail ?? '';
  bool hasNokEmail() => _nokEmail != null;

  // "nok_street_address" field.
  String? _nokStreetAddress;
  String get nokStreetAddress => _nokStreetAddress ?? '';
  bool hasNokStreetAddress() => _nokStreetAddress != null;

  // "nok_city" field.
  String? _nokCity;
  String get nokCity => _nokCity ?? '';
  bool hasNokCity() => _nokCity != null;

  // "nok_province" field.
  String? _nokProvince;
  String get nokProvince => _nokProvince ?? '';
  bool hasNokProvince() => _nokProvince != null;

  // "nok_postal_code" field.
  String? _nokPostalCode;
  String get nokPostalCode => _nokPostalCode ?? '';
  bool hasNokPostalCode() => _nokPostalCode != null;

  // "nok_dob" field.
  String? _nokDob;
  String get nokDob => _nokDob ?? '';
  bool hasNokDob() => _nokDob != null;

  // "prtp_dob" field.
  String? _prtpDob;
  String get prtpDob => _prtpDob ?? '';
  bool hasPrtpDob() => _prtpDob != null;

  // "nok_tel" field.
  String? _nokTel;
  String get nokTel => _nokTel ?? '';
  bool hasNokTel() => _nokTel != null;

  // "property_name" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "student_number" field.
  String? _studentNumber;
  String get studentNumber => _studentNumber ?? '';
  bool hasStudentNumber() => _studentNumber != null;

  // "room_name" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  bool hasRoomName() => _roomName != null;

  // "isOverride" field.
  bool? _isOverride;
  bool get isOverride => _isOverride ?? false;
  bool hasIsOverride() => _isOverride != null;

  // "denial_reason" field.
  String? _denialReason;
  String get denialReason => _denialReason ?? '';
  bool hasDenialReason() => _denialReason != null;

  // "date_signed" field.
  DateTime? _dateSigned;
  DateTime? get dateSigned => _dateSigned;
  bool hasDateSigned() => _dateSigned != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _lesseeName = snapshotData['lessee_name'] as String?;
    _lesseeSurname = snapshotData['lessee_surname'] as String?;
    _lesseeDob = snapshotData['lessee_dob'] as String?;
    _lesseeIdNum = snapshotData['lessee_id_num'] as String?;
    _lesseeStudentNum = snapshotData['lessee_student_num'] as String?;
    _lesseeStudyCourse = snapshotData['lessee_study_course'] as String?;
    _lesseeYos = castToType<int>(snapshotData['lessee_yos']);
    _lesseeGender = snapshotData['lessee_gender'] as String?;
    _lesseeEmail = snapshotData['lessee_email'] as String?;
    _lesseeTelphone = snapshotData['lessee_telphone'] as String?;
    _lesseeStreetAddress = snapshotData['lessee_street_address'] as String?;
    _lesseeCity = snapshotData['lessee_city'] as String?;
    _lesseeProvince = snapshotData['lessee_province'] as String?;
    _lesseePostalCode = snapshotData['lessee_postal_code'] as String?;
    _lesseePoBox = snapshotData['lessee_po_box'] as String?;
    _lesseeCityPo = snapshotData['lessee_city_po'] as String?;
    _lesseeProvincePo = snapshotData['lessee_province_po'] as String?;
    _lesseePostalCodePo = snapshotData['lessee_postal_code_po'] as String?;
    _topTenAgreement = snapshotData['top_ten_agreement'] as bool?;
    _rentalTermsAgreement = snapshotData['rental_terms_agreement'] as bool?;
    _annexureBAgreement = snapshotData['annexure_b_agreement'] as bool?;
    _annexureCAgreement = snapshotData['annexure_c_agreement'] as bool?;
    _consentClauseAgreement = snapshotData['consent_clause_agreement'] as bool?;
    _declarationAgreement = snapshotData['declaration_agreement'] as bool?;
    _copyOfId = snapshotData['copy_of_id'] as String?;
    _copyOfStudentCard = snapshotData['copy_of_student_card'] as String?;
    _isApproved = snapshotData['is_approved'] as bool?;
    _isSigned = snapshotData['is_signed'] as bool?;
    _tenantId = snapshotData['tenant_id'] as DocumentReference?;
    _isReviewed = snapshotData['is_reviewed'] as bool?;
    _tenantSignature = snapshotData['tenant_signature'] as String?;
    _tenantSignaturePath = snapshotData['tenant_signature_path'] as String?;
    _portalStartAgreement = snapshotData['portal_start_agreement'] as bool?;
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _prtpName = snapshotData['prtp_name'] as String?;
    _prtpSurname = snapshotData['prtp_surname'] as String?;
    _prtpIdNum = snapshotData['prtp_id_num'] as String?;
    _prtpTel = snapshotData['prtp_tel'] as String?;
    _prtpEmail = snapshotData['prtp_email'] as String?;
    _prtpStreetAddress = snapshotData['prtp_street_address'] as String?;
    _prtpCity = snapshotData['prtp_city'] as String?;
    _prtpProvince = snapshotData['prtp_province'] as String?;
    _prtpPostalCode = snapshotData['prtp_postal_code'] as String?;
    _nokName = snapshotData['nok_name'] as String?;
    _nokSurnam = snapshotData['nok_surnam'] as String?;
    _nokIdNum = snapshotData['nok_id_num'] as String?;
    _nokEmail = snapshotData['nok_email'] as String?;
    _nokStreetAddress = snapshotData['nok_street_address'] as String?;
    _nokCity = snapshotData['nok_city'] as String?;
    _nokProvince = snapshotData['nok_province'] as String?;
    _nokPostalCode = snapshotData['nok_postal_code'] as String?;
    _nokDob = snapshotData['nok_dob'] as String?;
    _prtpDob = snapshotData['prtp_dob'] as String?;
    _nokTel = snapshotData['nok_tel'] as String?;
    _propertyName = snapshotData['property_name'] as String?;
    _studentNumber = snapshotData['student_number'] as String?;
    _roomName = snapshotData['room_name'] as String?;
    _isOverride = snapshotData['isOverride'] as bool?;
    _denialReason = snapshotData['denial_reason'] as String?;
    _dateSigned = snapshotData['date_signed'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('tenant_info')
          : FirebaseFirestore.instance.collectionGroup('tenant_info');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('tenant_info').doc(id);

  static Stream<TenantInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TenantInfoRecord.fromSnapshot(s));

  static Future<TenantInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TenantInfoRecord.fromSnapshot(s));

  static TenantInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TenantInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TenantInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TenantInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TenantInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TenantInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTenantInfoRecordData({
  String? lesseeName,
  String? lesseeSurname,
  String? lesseeDob,
  String? lesseeIdNum,
  String? lesseeStudentNum,
  String? lesseeStudyCourse,
  int? lesseeYos,
  String? lesseeGender,
  String? lesseeEmail,
  String? lesseeTelphone,
  String? lesseeStreetAddress,
  String? lesseeCity,
  String? lesseeProvince,
  String? lesseePostalCode,
  String? lesseePoBox,
  String? lesseeCityPo,
  String? lesseeProvincePo,
  String? lesseePostalCodePo,
  bool? topTenAgreement,
  bool? rentalTermsAgreement,
  bool? annexureBAgreement,
  bool? annexureCAgreement,
  bool? consentClauseAgreement,
  bool? declarationAgreement,
  String? copyOfId,
  String? copyOfStudentCard,
  bool? isApproved,
  bool? isSigned,
  DocumentReference? tenantId,
  bool? isReviewed,
  String? tenantSignature,
  String? tenantSignaturePath,
  bool? portalStartAgreement,
  DocumentReference? landlordId,
  String? prtpName,
  String? prtpSurname,
  String? prtpIdNum,
  String? prtpTel,
  String? prtpEmail,
  String? prtpStreetAddress,
  String? prtpCity,
  String? prtpProvince,
  String? prtpPostalCode,
  String? nokName,
  String? nokSurnam,
  String? nokIdNum,
  String? nokEmail,
  String? nokStreetAddress,
  String? nokCity,
  String? nokProvince,
  String? nokPostalCode,
  String? nokDob,
  String? prtpDob,
  String? nokTel,
  String? propertyName,
  String? studentNumber,
  String? roomName,
  bool? isOverride,
  String? denialReason,
  DateTime? dateSigned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lessee_name': lesseeName,
      'lessee_surname': lesseeSurname,
      'lessee_dob': lesseeDob,
      'lessee_id_num': lesseeIdNum,
      'lessee_student_num': lesseeStudentNum,
      'lessee_study_course': lesseeStudyCourse,
      'lessee_yos': lesseeYos,
      'lessee_gender': lesseeGender,
      'lessee_email': lesseeEmail,
      'lessee_telphone': lesseeTelphone,
      'lessee_street_address': lesseeStreetAddress,
      'lessee_city': lesseeCity,
      'lessee_province': lesseeProvince,
      'lessee_postal_code': lesseePostalCode,
      'lessee_po_box': lesseePoBox,
      'lessee_city_po': lesseeCityPo,
      'lessee_province_po': lesseeProvincePo,
      'lessee_postal_code_po': lesseePostalCodePo,
      'top_ten_agreement': topTenAgreement,
      'rental_terms_agreement': rentalTermsAgreement,
      'annexure_b_agreement': annexureBAgreement,
      'annexure_c_agreement': annexureCAgreement,
      'consent_clause_agreement': consentClauseAgreement,
      'declaration_agreement': declarationAgreement,
      'copy_of_id': copyOfId,
      'copy_of_student_card': copyOfStudentCard,
      'is_approved': isApproved,
      'is_signed': isSigned,
      'tenant_id': tenantId,
      'is_reviewed': isReviewed,
      'tenant_signature': tenantSignature,
      'tenant_signature_path': tenantSignaturePath,
      'portal_start_agreement': portalStartAgreement,
      'landlord_id': landlordId,
      'prtp_name': prtpName,
      'prtp_surname': prtpSurname,
      'prtp_id_num': prtpIdNum,
      'prtp_tel': prtpTel,
      'prtp_email': prtpEmail,
      'prtp_street_address': prtpStreetAddress,
      'prtp_city': prtpCity,
      'prtp_province': prtpProvince,
      'prtp_postal_code': prtpPostalCode,
      'nok_name': nokName,
      'nok_surnam': nokSurnam,
      'nok_id_num': nokIdNum,
      'nok_email': nokEmail,
      'nok_street_address': nokStreetAddress,
      'nok_city': nokCity,
      'nok_province': nokProvince,
      'nok_postal_code': nokPostalCode,
      'nok_dob': nokDob,
      'prtp_dob': prtpDob,
      'nok_tel': nokTel,
      'property_name': propertyName,
      'student_number': studentNumber,
      'room_name': roomName,
      'isOverride': isOverride,
      'denial_reason': denialReason,
      'date_signed': dateSigned,
    }.withoutNulls,
  );

  return firestoreData;
}

class TenantInfoRecordDocumentEquality implements Equality<TenantInfoRecord> {
  const TenantInfoRecordDocumentEquality();

  @override
  bool equals(TenantInfoRecord? e1, TenantInfoRecord? e2) {
    return e1?.lesseeName == e2?.lesseeName &&
        e1?.lesseeSurname == e2?.lesseeSurname &&
        e1?.lesseeDob == e2?.lesseeDob &&
        e1?.lesseeIdNum == e2?.lesseeIdNum &&
        e1?.lesseeStudentNum == e2?.lesseeStudentNum &&
        e1?.lesseeStudyCourse == e2?.lesseeStudyCourse &&
        e1?.lesseeYos == e2?.lesseeYos &&
        e1?.lesseeGender == e2?.lesseeGender &&
        e1?.lesseeEmail == e2?.lesseeEmail &&
        e1?.lesseeTelphone == e2?.lesseeTelphone &&
        e1?.lesseeStreetAddress == e2?.lesseeStreetAddress &&
        e1?.lesseeCity == e2?.lesseeCity &&
        e1?.lesseeProvince == e2?.lesseeProvince &&
        e1?.lesseePostalCode == e2?.lesseePostalCode &&
        e1?.lesseePoBox == e2?.lesseePoBox &&
        e1?.lesseeCityPo == e2?.lesseeCityPo &&
        e1?.lesseeProvincePo == e2?.lesseeProvincePo &&
        e1?.lesseePostalCodePo == e2?.lesseePostalCodePo &&
        e1?.topTenAgreement == e2?.topTenAgreement &&
        e1?.rentalTermsAgreement == e2?.rentalTermsAgreement &&
        e1?.annexureBAgreement == e2?.annexureBAgreement &&
        e1?.annexureCAgreement == e2?.annexureCAgreement &&
        e1?.consentClauseAgreement == e2?.consentClauseAgreement &&
        e1?.declarationAgreement == e2?.declarationAgreement &&
        e1?.copyOfId == e2?.copyOfId &&
        e1?.copyOfStudentCard == e2?.copyOfStudentCard &&
        e1?.isApproved == e2?.isApproved &&
        e1?.isSigned == e2?.isSigned &&
        e1?.tenantId == e2?.tenantId &&
        e1?.isReviewed == e2?.isReviewed &&
        e1?.tenantSignature == e2?.tenantSignature &&
        e1?.tenantSignaturePath == e2?.tenantSignaturePath &&
        e1?.portalStartAgreement == e2?.portalStartAgreement &&
        e1?.landlordId == e2?.landlordId &&
        e1?.prtpName == e2?.prtpName &&
        e1?.prtpSurname == e2?.prtpSurname &&
        e1?.prtpIdNum == e2?.prtpIdNum &&
        e1?.prtpTel == e2?.prtpTel &&
        e1?.prtpEmail == e2?.prtpEmail &&
        e1?.prtpStreetAddress == e2?.prtpStreetAddress &&
        e1?.prtpCity == e2?.prtpCity &&
        e1?.prtpProvince == e2?.prtpProvince &&
        e1?.prtpPostalCode == e2?.prtpPostalCode &&
        e1?.nokName == e2?.nokName &&
        e1?.nokSurnam == e2?.nokSurnam &&
        e1?.nokIdNum == e2?.nokIdNum &&
        e1?.nokEmail == e2?.nokEmail &&
        e1?.nokStreetAddress == e2?.nokStreetAddress &&
        e1?.nokCity == e2?.nokCity &&
        e1?.nokProvince == e2?.nokProvince &&
        e1?.nokPostalCode == e2?.nokPostalCode &&
        e1?.nokDob == e2?.nokDob &&
        e1?.prtpDob == e2?.prtpDob &&
        e1?.nokTel == e2?.nokTel &&
        e1?.propertyName == e2?.propertyName &&
        e1?.studentNumber == e2?.studentNumber &&
        e1?.roomName == e2?.roomName &&
        e1?.isOverride == e2?.isOverride &&
        e1?.denialReason == e2?.denialReason &&
        e1?.dateSigned == e2?.dateSigned;
  }

  @override
  int hash(TenantInfoRecord? e) => const ListEquality().hash([
        e?.lesseeName,
        e?.lesseeSurname,
        e?.lesseeDob,
        e?.lesseeIdNum,
        e?.lesseeStudentNum,
        e?.lesseeStudyCourse,
        e?.lesseeYos,
        e?.lesseeGender,
        e?.lesseeEmail,
        e?.lesseeTelphone,
        e?.lesseeStreetAddress,
        e?.lesseeCity,
        e?.lesseeProvince,
        e?.lesseePostalCode,
        e?.lesseePoBox,
        e?.lesseeCityPo,
        e?.lesseeProvincePo,
        e?.lesseePostalCodePo,
        e?.topTenAgreement,
        e?.rentalTermsAgreement,
        e?.annexureBAgreement,
        e?.annexureCAgreement,
        e?.consentClauseAgreement,
        e?.declarationAgreement,
        e?.copyOfId,
        e?.copyOfStudentCard,
        e?.isApproved,
        e?.isSigned,
        e?.tenantId,
        e?.isReviewed,
        e?.tenantSignature,
        e?.tenantSignaturePath,
        e?.portalStartAgreement,
        e?.landlordId,
        e?.prtpName,
        e?.prtpSurname,
        e?.prtpIdNum,
        e?.prtpTel,
        e?.prtpEmail,
        e?.prtpStreetAddress,
        e?.prtpCity,
        e?.prtpProvince,
        e?.prtpPostalCode,
        e?.nokName,
        e?.nokSurnam,
        e?.nokIdNum,
        e?.nokEmail,
        e?.nokStreetAddress,
        e?.nokCity,
        e?.nokProvince,
        e?.nokPostalCode,
        e?.nokDob,
        e?.prtpDob,
        e?.nokTel,
        e?.propertyName,
        e?.studentNumber,
        e?.roomName,
        e?.isOverride,
        e?.denialReason,
        e?.dateSigned
      ]);

  @override
  bool isValidKey(Object? o) => o is TenantInfoRecord;
}
