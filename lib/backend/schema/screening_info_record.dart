import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScreeningInfoRecord extends FirestoreRecord {
  ScreeningInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "screening_info_id" field.
  String? _screeningInfoId;
  String get screeningInfoId => _screeningInfoId ?? '';
  bool hasScreeningInfoId() => _screeningInfoId != null;

  // "consent_decleration_agreement" field.
  bool? _consentDeclerationAgreement;
  bool get consentDeclerationAgreement => _consentDeclerationAgreement ?? false;
  bool hasConsentDeclerationAgreement() => _consentDeclerationAgreement != null;

  // "screening_signature" field.
  String? _screeningSignature;
  String get screeningSignature => _screeningSignature ?? '';
  bool hasScreeningSignature() => _screeningSignature != null;

  // "screening_signature_string" field.
  String? _screeningSignatureString;
  String get screeningSignatureString => _screeningSignatureString ?? '';
  bool hasScreeningSignatureString() => _screeningSignatureString != null;

  // "year_of_study" field.
  String? _yearOfStudy;
  String get yearOfStudy => _yearOfStudy ?? '';
  bool hasYearOfStudy() => _yearOfStudy != null;

  // "first_registration" field.
  String? _firstRegistration;
  String get firstRegistration => _firstRegistration ?? '';
  bool hasFirstRegistration() => _firstRegistration != null;

  // "nsfas_funded_previous_year" field.
  String? _nsfasFundedPreviousYear;
  String get nsfasFundedPreviousYear => _nsfasFundedPreviousYear ?? '';
  bool hasNsfasFundedPreviousYear() => _nsfasFundedPreviousYear != null;

  // "nsfas_funded_current_year" field.
  String? _nsfasFundedCurrentYear;
  String get nsfasFundedCurrentYear => _nsfasFundedCurrentYear ?? '';
  bool hasNsfasFundedCurrentYear() => _nsfasFundedCurrentYear != null;

  // "first_recieve_nsfas_year" field.
  String? _firstRecieveNsfasYear;
  String get firstRecieveNsfasYear => _firstRecieveNsfasYear ?? '';
  bool hasFirstRecieveNsfasYear() => _firstRecieveNsfasYear != null;

  // "any_outstanding_accom_fees" field.
  String? _anyOutstandingAccomFees;
  String get anyOutstandingAccomFees => _anyOutstandingAccomFees ?? '';
  bool hasAnyOutstandingAccomFees() => _anyOutstandingAccomFees != null;

  // "institution" field.
  String? _institution;
  String get institution => _institution ?? '';
  bool hasInstitution() => _institution != null;

  // "qualification" field.
  String? _qualification;
  String get qualification => _qualification ?? '';
  bool hasQualification() => _qualification != null;

  // "course_duration" field.
  String? _courseDuration;
  String get courseDuration => _courseDuration ?? '';
  bool hasCourseDuration() => _courseDuration != null;

  // "main_or_extended" field.
  String? _mainOrExtended;
  String get mainOrExtended => _mainOrExtended ?? '';
  bool hasMainOrExtended() => _mainOrExtended != null;

  // "pracs_during_year" field.
  String? _pracsDuringYear;
  String get pracsDuringYear => _pracsDuringYear ?? '';
  bool hasPracsDuringYear() => _pracsDuringYear != null;

  // "online_classes" field.
  String? _onlineClasses;
  String get onlineClasses => _onlineClasses ?? '';
  bool hasOnlineClasses() => _onlineClasses != null;

  // "percent_modules_pass_70" field.
  String? _percentModulesPass70;
  String get percentModulesPass70 => _percentModulesPass70 ?? '';
  bool hasPercentModulesPass70() => _percentModulesPass70 != null;

  // "ap_mark" field.
  String? _apMark;
  String get apMark => _apMark ?? '';
  bool hasApMark() => _apMark != null;

  // "course_changed_before" field.
  String? _courseChangedBefore;
  String get courseChangedBefore => _courseChangedBefore ?? '';
  bool hasCourseChangedBefore() => _courseChangedBefore != null;

  // "campus_changed_before" field.
  String? _campusChangedBefore;
  String get campusChangedBefore => _campusChangedBefore ?? '';
  bool hasCampusChangedBefore() => _campusChangedBefore != null;

  // "num_semester_reg" field.
  String? _numSemesterReg;
  String get numSemesterReg => _numSemesterReg ?? '';
  bool hasNumSemesterReg() => _numSemesterReg != null;

  // "stay_previous_year" field.
  String? _stayPreviousYear;
  String get stayPreviousYear => _stayPreviousYear ?? '';
  bool hasStayPreviousYear() => _stayPreviousYear != null;

  // "aca_fin_appeal_before" field.
  String? _acaFinAppealBefore;
  String get acaFinAppealBefore => _acaFinAppealBefore ?? '';
  bool hasAcaFinAppealBefore() => _acaFinAppealBefore != null;

  // "student_id" field.
  DocumentReference? _studentId;
  DocumentReference? get studentId => _studentId;
  bool hasStudentId() => _studentId != null;

  // "is_reviewed" field.
  bool? _isReviewed;
  bool get isReviewed => _isReviewed ?? false;
  bool hasIsReviewed() => _isReviewed != null;

  // "is_approved" field.
  bool? _isApproved;
  bool get isApproved => _isApproved ?? false;
  bool hasIsApproved() => _isApproved != null;

  // "tenant_student_num" field.
  String? _tenantStudentNum;
  String get tenantStudentNum => _tenantStudentNum ?? '';
  bool hasTenantStudentNum() => _tenantStudentNum != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "is_submited" field.
  bool? _isSubmited;
  bool get isSubmited => _isSubmited ?? false;
  bool hasIsSubmited() => _isSubmited != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "is_high_risk" field.
  bool? _isHighRisk;
  bool get isHighRisk => _isHighRisk ?? false;
  bool hasIsHighRisk() => _isHighRisk != null;

  // "tel_phone" field.
  String? _telPhone;
  String get telPhone => _telPhone ?? '';
  bool hasTelPhone() => _telPhone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "funding_confirmation_method" field.
  String? _fundingConfirmationMethod;
  String get fundingConfirmationMethod => _fundingConfirmationMethod ?? '';
  bool hasFundingConfirmationMethod() => _fundingConfirmationMethod != null;

  // "is_denied" field.
  bool? _isDenied;
  bool get isDenied => _isDenied ?? false;
  bool hasIsDenied() => _isDenied != null;

  // "student_num" field.
  String? _studentNum;
  String get studentNum => _studentNum ?? '';
  bool hasStudentNum() => _studentNum != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _screeningInfoId = snapshotData['screening_info_id'] as String?;
    _consentDeclerationAgreement =
        snapshotData['consent_decleration_agreement'] as bool?;
    _screeningSignature = snapshotData['screening_signature'] as String?;
    _screeningSignatureString =
        snapshotData['screening_signature_string'] as String?;
    _yearOfStudy = snapshotData['year_of_study'] as String?;
    _firstRegistration = snapshotData['first_registration'] as String?;
    _nsfasFundedPreviousYear =
        snapshotData['nsfas_funded_previous_year'] as String?;
    _nsfasFundedCurrentYear =
        snapshotData['nsfas_funded_current_year'] as String?;
    _firstRecieveNsfasYear =
        snapshotData['first_recieve_nsfas_year'] as String?;
    _anyOutstandingAccomFees =
        snapshotData['any_outstanding_accom_fees'] as String?;
    _institution = snapshotData['institution'] as String?;
    _qualification = snapshotData['qualification'] as String?;
    _courseDuration = snapshotData['course_duration'] as String?;
    _mainOrExtended = snapshotData['main_or_extended'] as String?;
    _pracsDuringYear = snapshotData['pracs_during_year'] as String?;
    _onlineClasses = snapshotData['online_classes'] as String?;
    _percentModulesPass70 = snapshotData['percent_modules_pass_70'] as String?;
    _apMark = snapshotData['ap_mark'] as String?;
    _courseChangedBefore = snapshotData['course_changed_before'] as String?;
    _campusChangedBefore = snapshotData['campus_changed_before'] as String?;
    _numSemesterReg = snapshotData['num_semester_reg'] as String?;
    _stayPreviousYear = snapshotData['stay_previous_year'] as String?;
    _acaFinAppealBefore = snapshotData['aca_fin_appeal_before'] as String?;
    _studentId = snapshotData['student_id'] as DocumentReference?;
    _isReviewed = snapshotData['is_reviewed'] as bool?;
    _isApproved = snapshotData['is_approved'] as bool?;
    _tenantStudentNum = snapshotData['tenant_student_num'] as String?;
    _completed = snapshotData['completed'] as bool?;
    _isSubmited = snapshotData['is_submited'] as bool?;
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _isHighRisk = snapshotData['is_high_risk'] as bool?;
    _telPhone = snapshotData['tel_phone'] as String?;
    _email = snapshotData['email'] as String?;
    _fundingConfirmationMethod =
        snapshotData['funding_confirmation_method'] as String?;
    _isDenied = snapshotData['is_denied'] as bool?;
    _studentNum = snapshotData['student_num'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Screening_Info');

  static Stream<ScreeningInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScreeningInfoRecord.fromSnapshot(s));

  static Future<ScreeningInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScreeningInfoRecord.fromSnapshot(s));

  static ScreeningInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScreeningInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScreeningInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScreeningInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScreeningInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScreeningInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScreeningInfoRecordData({
  String? screeningInfoId,
  bool? consentDeclerationAgreement,
  String? screeningSignature,
  String? screeningSignatureString,
  String? yearOfStudy,
  String? firstRegistration,
  String? nsfasFundedPreviousYear,
  String? nsfasFundedCurrentYear,
  String? firstRecieveNsfasYear,
  String? anyOutstandingAccomFees,
  String? institution,
  String? qualification,
  String? courseDuration,
  String? mainOrExtended,
  String? pracsDuringYear,
  String? onlineClasses,
  String? percentModulesPass70,
  String? apMark,
  String? courseChangedBefore,
  String? campusChangedBefore,
  String? numSemesterReg,
  String? stayPreviousYear,
  String? acaFinAppealBefore,
  DocumentReference? studentId,
  bool? isReviewed,
  bool? isApproved,
  String? tenantStudentNum,
  bool? completed,
  bool? isSubmited,
  String? name,
  String? surname,
  bool? isHighRisk,
  String? telPhone,
  String? email,
  String? fundingConfirmationMethod,
  bool? isDenied,
  String? studentNum,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'screening_info_id': screeningInfoId,
      'consent_decleration_agreement': consentDeclerationAgreement,
      'screening_signature': screeningSignature,
      'screening_signature_string': screeningSignatureString,
      'year_of_study': yearOfStudy,
      'first_registration': firstRegistration,
      'nsfas_funded_previous_year': nsfasFundedPreviousYear,
      'nsfas_funded_current_year': nsfasFundedCurrentYear,
      'first_recieve_nsfas_year': firstRecieveNsfasYear,
      'any_outstanding_accom_fees': anyOutstandingAccomFees,
      'institution': institution,
      'qualification': qualification,
      'course_duration': courseDuration,
      'main_or_extended': mainOrExtended,
      'pracs_during_year': pracsDuringYear,
      'online_classes': onlineClasses,
      'percent_modules_pass_70': percentModulesPass70,
      'ap_mark': apMark,
      'course_changed_before': courseChangedBefore,
      'campus_changed_before': campusChangedBefore,
      'num_semester_reg': numSemesterReg,
      'stay_previous_year': stayPreviousYear,
      'aca_fin_appeal_before': acaFinAppealBefore,
      'student_id': studentId,
      'is_reviewed': isReviewed,
      'is_approved': isApproved,
      'tenant_student_num': tenantStudentNum,
      'completed': completed,
      'is_submited': isSubmited,
      'name': name,
      'surname': surname,
      'is_high_risk': isHighRisk,
      'tel_phone': telPhone,
      'email': email,
      'funding_confirmation_method': fundingConfirmationMethod,
      'is_denied': isDenied,
      'student_num': studentNum,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScreeningInfoRecordDocumentEquality
    implements Equality<ScreeningInfoRecord> {
  const ScreeningInfoRecordDocumentEquality();

  @override
  bool equals(ScreeningInfoRecord? e1, ScreeningInfoRecord? e2) {
    return e1?.screeningInfoId == e2?.screeningInfoId &&
        e1?.consentDeclerationAgreement == e2?.consentDeclerationAgreement &&
        e1?.screeningSignature == e2?.screeningSignature &&
        e1?.screeningSignatureString == e2?.screeningSignatureString &&
        e1?.yearOfStudy == e2?.yearOfStudy &&
        e1?.firstRegistration == e2?.firstRegistration &&
        e1?.nsfasFundedPreviousYear == e2?.nsfasFundedPreviousYear &&
        e1?.nsfasFundedCurrentYear == e2?.nsfasFundedCurrentYear &&
        e1?.firstRecieveNsfasYear == e2?.firstRecieveNsfasYear &&
        e1?.anyOutstandingAccomFees == e2?.anyOutstandingAccomFees &&
        e1?.institution == e2?.institution &&
        e1?.qualification == e2?.qualification &&
        e1?.courseDuration == e2?.courseDuration &&
        e1?.mainOrExtended == e2?.mainOrExtended &&
        e1?.pracsDuringYear == e2?.pracsDuringYear &&
        e1?.onlineClasses == e2?.onlineClasses &&
        e1?.percentModulesPass70 == e2?.percentModulesPass70 &&
        e1?.apMark == e2?.apMark &&
        e1?.courseChangedBefore == e2?.courseChangedBefore &&
        e1?.campusChangedBefore == e2?.campusChangedBefore &&
        e1?.numSemesterReg == e2?.numSemesterReg &&
        e1?.stayPreviousYear == e2?.stayPreviousYear &&
        e1?.acaFinAppealBefore == e2?.acaFinAppealBefore &&
        e1?.studentId == e2?.studentId &&
        e1?.isReviewed == e2?.isReviewed &&
        e1?.isApproved == e2?.isApproved &&
        e1?.tenantStudentNum == e2?.tenantStudentNum &&
        e1?.completed == e2?.completed &&
        e1?.isSubmited == e2?.isSubmited &&
        e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.isHighRisk == e2?.isHighRisk &&
        e1?.telPhone == e2?.telPhone &&
        e1?.email == e2?.email &&
        e1?.fundingConfirmationMethod == e2?.fundingConfirmationMethod &&
        e1?.isDenied == e2?.isDenied &&
        e1?.studentNum == e2?.studentNum &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(ScreeningInfoRecord? e) => const ListEquality().hash([
        e?.screeningInfoId,
        e?.consentDeclerationAgreement,
        e?.screeningSignature,
        e?.screeningSignatureString,
        e?.yearOfStudy,
        e?.firstRegistration,
        e?.nsfasFundedPreviousYear,
        e?.nsfasFundedCurrentYear,
        e?.firstRecieveNsfasYear,
        e?.anyOutstandingAccomFees,
        e?.institution,
        e?.qualification,
        e?.courseDuration,
        e?.mainOrExtended,
        e?.pracsDuringYear,
        e?.onlineClasses,
        e?.percentModulesPass70,
        e?.apMark,
        e?.courseChangedBefore,
        e?.campusChangedBefore,
        e?.numSemesterReg,
        e?.stayPreviousYear,
        e?.acaFinAppealBefore,
        e?.studentId,
        e?.isReviewed,
        e?.isApproved,
        e?.tenantStudentNum,
        e?.completed,
        e?.isSubmited,
        e?.name,
        e?.surname,
        e?.isHighRisk,
        e?.telPhone,
        e?.email,
        e?.fundingConfirmationMethod,
        e?.isDenied,
        e?.studentNum,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is ScreeningInfoRecord;
}
