import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_surname" field.
  String? _userSurname;
  String get userSurname => _userSurname ?? '';
  bool hasUserSurname() => _userSurname != null;

  // "user_role" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "property_id" field.
  DocumentReference? _propertyId;
  DocumentReference? get propertyId => _propertyId;
  bool hasPropertyId() => _propertyId != null;

  // "linked_to_portfolio" field.
  bool? _linkedToPortfolio;
  bool get linkedToPortfolio => _linkedToPortfolio ?? false;
  bool hasLinkedToPortfolio() => _linkedToPortfolio != null;

  // "user_id_string" field.
  String? _userIdString;
  String get userIdString => _userIdString ?? '';
  bool hasUserIdString() => _userIdString != null;

  // "linked_to_property" field.
  bool? _linkedToProperty;
  bool get linkedToProperty => _linkedToProperty ?? false;
  bool hasLinkedToProperty() => _linkedToProperty != null;

  // "completed_screening" field.
  bool? _completedScreening;
  bool get completedScreening => _completedScreening ?? false;
  bool hasCompletedScreening() => _completedScreening != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  // "agent_screen" field.
  bool? _agentScreen;
  bool get agentScreen => _agentScreen ?? false;
  bool hasAgentScreen() => _agentScreen != null;

  // "permissions" field.
  List<String>? _permissions;
  List<String> get permissions => _permissions ?? const [];
  bool hasPermissions() => _permissions != null;

  // "employees" field.
  List<DocumentReference>? _employees;
  List<DocumentReference> get employees => _employees ?? const [];
  bool hasEmployees() => _employees != null;

  // "employer" field.
  List<DocumentReference>? _employer;
  List<DocumentReference> get employer => _employer ?? const [];
  bool hasEmployer() => _employer != null;

  // "agent_manager" field.
  DocumentReference? _agentManager;
  DocumentReference? get agentManager => _agentManager;
  bool hasAgentManager() => _agentManager != null;

  // "property_owners_linked" field.
  List<DocumentReference>? _propertyOwnersLinked;
  List<DocumentReference> get propertyOwnersLinked =>
      _propertyOwnersLinked ?? const [];
  bool hasPropertyOwnersLinked() => _propertyOwnersLinked != null;

  // "owner_permissions" field.
  List<String>? _ownerPermissions;
  List<String> get ownerPermissions => _ownerPermissions ?? const [];
  bool hasOwnerPermissions() => _ownerPermissions != null;

  // "owner_screening" field.
  bool? _ownerScreening;
  bool get ownerScreening => _ownerScreening ?? false;
  bool hasOwnerScreening() => _ownerScreening != null;

  // "do_not_show" field.
  bool? _doNotShow;
  bool get doNotShow => _doNotShow ?? false;
  bool hasDoNotShow() => _doNotShow != null;

  // "noti_counter" field.
  int? _notiCounter;
  int get notiCounter => _notiCounter ?? 0;
  bool hasNotiCounter() => _notiCounter != null;

  // "fixit_notification_counter" field.
  int? _fixitNotificationCounter;
  int get fixitNotificationCounter => _fixitNotificationCounter ?? 0;
  bool hasFixitNotificationCounter() => _fixitNotificationCounter != null;

  // "broadcast_noti_counter" field.
  int? _broadcastNotiCounter;
  int get broadcastNotiCounter => _broadcastNotiCounter ?? 0;
  bool hasBroadcastNotiCounter() => _broadcastNotiCounter != null;

  // "receive_noti" field.
  bool? _receiveNoti;
  bool get receiveNoti => _receiveNoti ?? false;
  bool hasReceiveNoti() => _receiveNoti != null;

  // "who_can_message_me" field.
  String? _whoCanMessageMe;
  String get whoCanMessageMe => _whoCanMessageMe ?? '';
  bool hasWhoCanMessageMe() => _whoCanMessageMe != null;

  // "user_location" field.
  LatLng? _userLocation;
  LatLng? get userLocation => _userLocation;
  bool hasUserLocation() => _userLocation != null;

  // "download_contract" field.
  bool? _downloadContract;
  bool get downloadContract => _downloadContract ?? false;
  bool hasDownloadContract() => _downloadContract != null;

  // "tenant_permission" field.
  bool? _tenantPermission;
  bool get tenantPermission => _tenantPermission ?? false;
  bool hasTenantPermission() => _tenantPermission != null;

  // "auto_message" field.
  String? _autoMessage;
  String get autoMessage => _autoMessage ?? '';
  bool hasAutoMessage() => _autoMessage != null;

  // "auto_message_duration" field.
  String? _autoMessageDuration;
  String get autoMessageDuration => _autoMessageDuration ?? '';
  bool hasAutoMessageDuration() => _autoMessageDuration != null;

  // "auto_message_target" field.
  List<DocumentReference>? _autoMessageTarget;
  List<DocumentReference> get autoMessageTarget =>
      _autoMessageTarget ?? const [];
  bool hasAutoMessageTarget() => _autoMessageTarget != null;

  // "show_info" field.
  bool? _showInfo;
  bool get showInfo => _showInfo ?? false;
  bool hasShowInfo() => _showInfo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userSurname = snapshotData['user_surname'] as String?;
    _userRole = snapshotData['user_role'] as String?;
    _propertyId = snapshotData['property_id'] as DocumentReference?;
    _linkedToPortfolio = snapshotData['linked_to_portfolio'] as bool?;
    _userIdString = snapshotData['user_id_string'] as String?;
    _linkedToProperty = snapshotData['linked_to_property'] as bool?;
    _completedScreening = snapshotData['completed_screening'] as bool?;
    _password = snapshotData['password'] as String?;
    _companyId = snapshotData['company_id'] as String?;
    _agentScreen = snapshotData['agent_screen'] as bool?;
    _permissions = getDataList(snapshotData['permissions']);
    _employees = getDataList(snapshotData['employees']);
    _employer = getDataList(snapshotData['employer']);
    _agentManager = snapshotData['agent_manager'] as DocumentReference?;
    _propertyOwnersLinked = getDataList(snapshotData['property_owners_linked']);
    _ownerPermissions = getDataList(snapshotData['owner_permissions']);
    _ownerScreening = snapshotData['owner_screening'] as bool?;
    _doNotShow = snapshotData['do_not_show'] as bool?;
    _notiCounter = castToType<int>(snapshotData['noti_counter']);
    _fixitNotificationCounter =
        castToType<int>(snapshotData['fixit_notification_counter']);
    _broadcastNotiCounter =
        castToType<int>(snapshotData['broadcast_noti_counter']);
    _receiveNoti = snapshotData['receive_noti'] as bool?;
    _whoCanMessageMe = snapshotData['who_can_message_me'] as String?;
    _userLocation = snapshotData['user_location'] as LatLng?;
    _downloadContract = snapshotData['download_contract'] as bool?;
    _tenantPermission = snapshotData['tenant_permission'] as bool?;
    _autoMessage = snapshotData['auto_message'] as String?;
    _autoMessageDuration = snapshotData['auto_message_duration'] as String?;
    _autoMessageTarget = getDataList(snapshotData['auto_message_target']);
    _showInfo = snapshotData['show_info'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userSurname,
  String? userRole,
  DocumentReference? propertyId,
  bool? linkedToPortfolio,
  String? userIdString,
  bool? linkedToProperty,
  bool? completedScreening,
  String? password,
  String? companyId,
  bool? agentScreen,
  DocumentReference? agentManager,
  bool? ownerScreening,
  bool? doNotShow,
  int? notiCounter,
  int? fixitNotificationCounter,
  int? broadcastNotiCounter,
  bool? receiveNoti,
  String? whoCanMessageMe,
  LatLng? userLocation,
  bool? downloadContract,
  bool? tenantPermission,
  String? autoMessage,
  String? autoMessageDuration,
  bool? showInfo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_surname': userSurname,
      'user_role': userRole,
      'property_id': propertyId,
      'linked_to_portfolio': linkedToPortfolio,
      'user_id_string': userIdString,
      'linked_to_property': linkedToProperty,
      'completed_screening': completedScreening,
      'password': password,
      'company_id': companyId,
      'agent_screen': agentScreen,
      'agent_manager': agentManager,
      'owner_screening': ownerScreening,
      'do_not_show': doNotShow,
      'noti_counter': notiCounter,
      'fixit_notification_counter': fixitNotificationCounter,
      'broadcast_noti_counter': broadcastNotiCounter,
      'receive_noti': receiveNoti,
      'who_can_message_me': whoCanMessageMe,
      'user_location': userLocation,
      'download_contract': downloadContract,
      'tenant_permission': tenantPermission,
      'auto_message': autoMessage,
      'auto_message_duration': autoMessageDuration,
      'show_info': showInfo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userSurname == e2?.userSurname &&
        e1?.userRole == e2?.userRole &&
        e1?.propertyId == e2?.propertyId &&
        e1?.linkedToPortfolio == e2?.linkedToPortfolio &&
        e1?.userIdString == e2?.userIdString &&
        e1?.linkedToProperty == e2?.linkedToProperty &&
        e1?.completedScreening == e2?.completedScreening &&
        e1?.password == e2?.password &&
        e1?.companyId == e2?.companyId &&
        e1?.agentScreen == e2?.agentScreen &&
        listEquality.equals(e1?.permissions, e2?.permissions) &&
        listEquality.equals(e1?.employees, e2?.employees) &&
        listEquality.equals(e1?.employer, e2?.employer) &&
        e1?.agentManager == e2?.agentManager &&
        listEquality.equals(
            e1?.propertyOwnersLinked, e2?.propertyOwnersLinked) &&
        listEquality.equals(e1?.ownerPermissions, e2?.ownerPermissions) &&
        e1?.ownerScreening == e2?.ownerScreening &&
        e1?.doNotShow == e2?.doNotShow &&
        e1?.notiCounter == e2?.notiCounter &&
        e1?.fixitNotificationCounter == e2?.fixitNotificationCounter &&
        e1?.broadcastNotiCounter == e2?.broadcastNotiCounter &&
        e1?.receiveNoti == e2?.receiveNoti &&
        e1?.whoCanMessageMe == e2?.whoCanMessageMe &&
        e1?.userLocation == e2?.userLocation &&
        e1?.downloadContract == e2?.downloadContract &&
        e1?.tenantPermission == e2?.tenantPermission &&
        e1?.autoMessage == e2?.autoMessage &&
        e1?.autoMessageDuration == e2?.autoMessageDuration &&
        listEquality.equals(e1?.autoMessageTarget, e2?.autoMessageTarget) &&
        e1?.showInfo == e2?.showInfo;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userSurname,
        e?.userRole,
        e?.propertyId,
        e?.linkedToPortfolio,
        e?.userIdString,
        e?.linkedToProperty,
        e?.completedScreening,
        e?.password,
        e?.companyId,
        e?.agentScreen,
        e?.permissions,
        e?.employees,
        e?.employer,
        e?.agentManager,
        e?.propertyOwnersLinked,
        e?.ownerPermissions,
        e?.ownerScreening,
        e?.doNotShow,
        e?.notiCounter,
        e?.fixitNotificationCounter,
        e?.broadcastNotiCounter,
        e?.receiveNoti,
        e?.whoCanMessageMe,
        e?.userLocation,
        e?.downloadContract,
        e?.tenantPermission,
        e?.autoMessage,
        e?.autoMessageDuration,
        e?.autoMessageTarget,
        e?.showInfo
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
