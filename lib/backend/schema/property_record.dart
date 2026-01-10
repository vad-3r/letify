import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyRecord extends FirestoreRecord {
  PropertyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "property_name" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "property_address" field.
  String? _propertyAddress;
  String get propertyAddress => _propertyAddress ?? '';
  bool hasPropertyAddress() => _propertyAddress != null;

  // "property_description" field.
  String? _propertyDescription;
  String get propertyDescription => _propertyDescription ?? '';
  bool hasPropertyDescription() => _propertyDescription != null;

  // "portfolio_id" field.
  DocumentReference? _portfolioId;
  DocumentReference? get portfolioId => _portfolioId;
  bool hasPortfolioId() => _portfolioId != null;

  // "number_of_rooms" field.
  int? _numberOfRooms;
  int get numberOfRooms => _numberOfRooms ?? 0;
  bool hasNumberOfRooms() => _numberOfRooms != null;

  // "property_type" field.
  String? _propertyType;
  String get propertyType => _propertyType ?? '';
  bool hasPropertyType() => _propertyType != null;

  // "property_suburb" field.
  String? _propertySuburb;
  String get propertySuburb => _propertySuburb ?? '';
  bool hasPropertySuburb() => _propertySuburb != null;

  // "property_city" field.
  String? _propertyCity;
  String get propertyCity => _propertyCity ?? '';
  bool hasPropertyCity() => _propertyCity != null;

  // "property_zipcode" field.
  String? _propertyZipcode;
  String get propertyZipcode => _propertyZipcode ?? '';
  bool hasPropertyZipcode() => _propertyZipcode != null;

  // "studentsInProperty" field.
  List<DocumentReference>? _studentsInProperty;
  List<DocumentReference> get studentsInProperty =>
      _studentsInProperty ?? const [];
  bool hasStudentsInProperty() => _studentsInProperty != null;

  // "roomsInProperty" field.
  List<DocumentReference>? _roomsInProperty;
  List<DocumentReference> get roomsInProperty => _roomsInProperty ?? const [];
  bool hasRoomsInProperty() => _roomsInProperty != null;

  // "landlord_id" field.
  DocumentReference? _landlordId;
  DocumentReference? get landlordId => _landlordId;
  bool hasLandlordId() => _landlordId != null;

  // "property_ID" field.
  String? _propertyID;
  String get propertyID => _propertyID ?? '';
  bool hasPropertyID() => _propertyID != null;

  // "studentInProperty" field.
  List<DocumentReference>? _studentInProperty;
  List<DocumentReference> get studentInProperty =>
      _studentInProperty ?? const [];
  bool hasStudentInProperty() => _studentInProperty != null;

  // "wifi_name" field.
  String? _wifiName;
  String get wifiName => _wifiName ?? '';
  bool hasWifiName() => _wifiName != null;

  // "wifi_password" field.
  String? _wifiPassword;
  String get wifiPassword => _wifiPassword ?? '';
  bool hasWifiPassword() => _wifiPassword != null;

  // "wifi_support_link" field.
  String? _wifiSupportLink;
  String get wifiSupportLink => _wifiSupportLink ?? '';
  bool hasWifiSupportLink() => _wifiSupportLink != null;

  // "wifi_rules" field.
  String? _wifiRules;
  String get wifiRules => _wifiRules ?? '';
  bool hasWifiRules() => _wifiRules != null;

  // "house_group_link" field.
  String? _houseGroupLink;
  String get houseGroupLink => _houseGroupLink ?? '';
  bool hasHouseGroupLink() => _houseGroupLink != null;

  // "house_security_group_link" field.
  String? _houseSecurityGroupLink;
  String get houseSecurityGroupLink => _houseSecurityGroupLink ?? '';
  bool hasHouseSecurityGroupLink() => _houseSecurityGroupLink != null;

  // "redrabbit_link" field.
  String? _redrabbitLink;
  String get redrabbitLink => _redrabbitLink ?? '';
  bool hasRedrabbitLink() => _redrabbitLink != null;

  // "anon_noti_counter" field.
  int? _anonNotiCounter;
  int get anonNotiCounter => _anonNotiCounter ?? 0;
  bool hasAnonNotiCounter() => _anonNotiCounter != null;

  // "fixit_noti_counter" field.
  int? _fixitNotiCounter;
  int get fixitNotiCounter => _fixitNotiCounter ?? 0;
  bool hasFixitNotiCounter() => _fixitNotiCounter != null;

  // "broad_noti_counter" field.
  int? _broadNotiCounter;
  int get broadNotiCounter => _broadNotiCounter ?? 0;
  bool hasBroadNotiCounter() => _broadNotiCounter != null;

  // "booked_tenants" field.
  List<DocumentReference>? _bookedTenants;
  List<DocumentReference> get bookedTenants => _bookedTenants ?? const [];
  bool hasBookedTenants() => _bookedTenants != null;

  void _initializeFields() {
    _propertyName = snapshotData['property_name'] as String?;
    _propertyAddress = snapshotData['property_address'] as String?;
    _propertyDescription = snapshotData['property_description'] as String?;
    _portfolioId = snapshotData['portfolio_id'] as DocumentReference?;
    _numberOfRooms = castToType<int>(snapshotData['number_of_rooms']);
    _propertyType = snapshotData['property_type'] as String?;
    _propertySuburb = snapshotData['property_suburb'] as String?;
    _propertyCity = snapshotData['property_city'] as String?;
    _propertyZipcode = snapshotData['property_zipcode'] as String?;
    _studentsInProperty = getDataList(snapshotData['studentsInProperty']);
    _roomsInProperty = getDataList(snapshotData['roomsInProperty']);
    _landlordId = snapshotData['landlord_id'] as DocumentReference?;
    _propertyID = snapshotData['property_ID'] as String?;
    _studentInProperty = getDataList(snapshotData['studentInProperty']);
    _wifiName = snapshotData['wifi_name'] as String?;
    _wifiPassword = snapshotData['wifi_password'] as String?;
    _wifiSupportLink = snapshotData['wifi_support_link'] as String?;
    _wifiRules = snapshotData['wifi_rules'] as String?;
    _houseGroupLink = snapshotData['house_group_link'] as String?;
    _houseSecurityGroupLink =
        snapshotData['house_security_group_link'] as String?;
    _redrabbitLink = snapshotData['redrabbit_link'] as String?;
    _anonNotiCounter = castToType<int>(snapshotData['anon_noti_counter']);
    _fixitNotiCounter = castToType<int>(snapshotData['fixit_noti_counter']);
    _broadNotiCounter = castToType<int>(snapshotData['broad_noti_counter']);
    _bookedTenants = getDataList(snapshotData['booked_tenants']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Property');

  static Stream<PropertyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertyRecord.fromSnapshot(s));

  static Future<PropertyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertyRecord.fromSnapshot(s));

  static PropertyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertyRecord._(reference, mapFromFirestore(data));

  static PropertyRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      PropertyRecord.getDocumentFromData(
        {
          'property_name': snapshot.data['property_name'],
          'property_address': snapshot.data['property_address'],
          'property_description': snapshot.data['property_description'],
          'portfolio_id': convertAlgoliaParam(
            snapshot.data['portfolio_id'],
            ParamType.DocumentReference,
            false,
          ),
          'number_of_rooms': convertAlgoliaParam(
            snapshot.data['number_of_rooms'],
            ParamType.int,
            false,
          ),
          'property_type': snapshot.data['property_type'],
          'property_suburb': snapshot.data['property_suburb'],
          'property_city': snapshot.data['property_city'],
          'property_zipcode': snapshot.data['property_zipcode'],
          'studentsInProperty': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['studentsInProperty'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'roomsInProperty': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['roomsInProperty'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'landlord_id': convertAlgoliaParam(
            snapshot.data['landlord_id'],
            ParamType.DocumentReference,
            false,
          ),
          'property_ID': snapshot.data['property_ID'],
          'studentInProperty': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['studentInProperty'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'wifi_name': snapshot.data['wifi_name'],
          'wifi_password': snapshot.data['wifi_password'],
          'wifi_support_link': snapshot.data['wifi_support_link'],
          'wifi_rules': snapshot.data['wifi_rules'],
          'house_group_link': snapshot.data['house_group_link'],
          'house_security_group_link':
              snapshot.data['house_security_group_link'],
          'redrabbit_link': snapshot.data['redrabbit_link'],
          'anon_noti_counter': convertAlgoliaParam(
            snapshot.data['anon_noti_counter'],
            ParamType.int,
            false,
          ),
          'fixit_noti_counter': convertAlgoliaParam(
            snapshot.data['fixit_noti_counter'],
            ParamType.int,
            false,
          ),
          'broad_noti_counter': convertAlgoliaParam(
            snapshot.data['broad_noti_counter'],
            ParamType.int,
            false,
          ),
          'booked_tenants': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['booked_tenants'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
        },
        PropertyRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PropertyRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Property',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'PropertyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertyRecordData({
  String? propertyName,
  String? propertyAddress,
  String? propertyDescription,
  DocumentReference? portfolioId,
  int? numberOfRooms,
  String? propertyType,
  String? propertySuburb,
  String? propertyCity,
  String? propertyZipcode,
  DocumentReference? landlordId,
  String? propertyID,
  String? wifiName,
  String? wifiPassword,
  String? wifiSupportLink,
  String? wifiRules,
  String? houseGroupLink,
  String? houseSecurityGroupLink,
  String? redrabbitLink,
  int? anonNotiCounter,
  int? fixitNotiCounter,
  int? broadNotiCounter,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'property_name': propertyName,
      'property_address': propertyAddress,
      'property_description': propertyDescription,
      'portfolio_id': portfolioId,
      'number_of_rooms': numberOfRooms,
      'property_type': propertyType,
      'property_suburb': propertySuburb,
      'property_city': propertyCity,
      'property_zipcode': propertyZipcode,
      'landlord_id': landlordId,
      'property_ID': propertyID,
      'wifi_name': wifiName,
      'wifi_password': wifiPassword,
      'wifi_support_link': wifiSupportLink,
      'wifi_rules': wifiRules,
      'house_group_link': houseGroupLink,
      'house_security_group_link': houseSecurityGroupLink,
      'redrabbit_link': redrabbitLink,
      'anon_noti_counter': anonNotiCounter,
      'fixit_noti_counter': fixitNotiCounter,
      'broad_noti_counter': broadNotiCounter,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertyRecordDocumentEquality implements Equality<PropertyRecord> {
  const PropertyRecordDocumentEquality();

  @override
  bool equals(PropertyRecord? e1, PropertyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.propertyName == e2?.propertyName &&
        e1?.propertyAddress == e2?.propertyAddress &&
        e1?.propertyDescription == e2?.propertyDescription &&
        e1?.portfolioId == e2?.portfolioId &&
        e1?.numberOfRooms == e2?.numberOfRooms &&
        e1?.propertyType == e2?.propertyType &&
        e1?.propertySuburb == e2?.propertySuburb &&
        e1?.propertyCity == e2?.propertyCity &&
        e1?.propertyZipcode == e2?.propertyZipcode &&
        listEquality.equals(e1?.studentsInProperty, e2?.studentsInProperty) &&
        listEquality.equals(e1?.roomsInProperty, e2?.roomsInProperty) &&
        e1?.landlordId == e2?.landlordId &&
        e1?.propertyID == e2?.propertyID &&
        listEquality.equals(e1?.studentInProperty, e2?.studentInProperty) &&
        e1?.wifiName == e2?.wifiName &&
        e1?.wifiPassword == e2?.wifiPassword &&
        e1?.wifiSupportLink == e2?.wifiSupportLink &&
        e1?.wifiRules == e2?.wifiRules &&
        e1?.houseGroupLink == e2?.houseGroupLink &&
        e1?.houseSecurityGroupLink == e2?.houseSecurityGroupLink &&
        e1?.redrabbitLink == e2?.redrabbitLink &&
        e1?.anonNotiCounter == e2?.anonNotiCounter &&
        e1?.fixitNotiCounter == e2?.fixitNotiCounter &&
        e1?.broadNotiCounter == e2?.broadNotiCounter &&
        listEquality.equals(e1?.bookedTenants, e2?.bookedTenants);
  }

  @override
  int hash(PropertyRecord? e) => const ListEquality().hash([
        e?.propertyName,
        e?.propertyAddress,
        e?.propertyDescription,
        e?.portfolioId,
        e?.numberOfRooms,
        e?.propertyType,
        e?.propertySuburb,
        e?.propertyCity,
        e?.propertyZipcode,
        e?.studentsInProperty,
        e?.roomsInProperty,
        e?.landlordId,
        e?.propertyID,
        e?.studentInProperty,
        e?.wifiName,
        e?.wifiPassword,
        e?.wifiSupportLink,
        e?.wifiRules,
        e?.houseGroupLink,
        e?.houseSecurityGroupLink,
        e?.redrabbitLink,
        e?.anonNotiCounter,
        e?.fixitNotiCounter,
        e?.broadNotiCounter,
        e?.bookedTenants
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertyRecord;
}
