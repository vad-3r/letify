// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StoredCredentialsStruct extends FFFirebaseStruct {
  StoredCredentialsStruct({
    String? email,
    String? password,
    bool? isValid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _password = password,
        _isValid = isValid,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? 'email';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? 'password';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "isValid" field.
  bool? _isValid;
  bool get isValid => _isValid ?? false;
  set isValid(bool? val) => _isValid = val;

  bool hasIsValid() => _isValid != null;

  static StoredCredentialsStruct fromMap(Map<String, dynamic> data) =>
      StoredCredentialsStruct(
        email: data['email'] as String?,
        password: data['password'] as String?,
        isValid: data['isValid'] as bool?,
      );

  static StoredCredentialsStruct? maybeFromMap(dynamic data) => data is Map
      ? StoredCredentialsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'password': _password,
        'isValid': _isValid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'isValid': serializeParam(
          _isValid,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StoredCredentialsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StoredCredentialsStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        isValid: deserializeParam(
          data['isValid'],
          ParamType.bool,
          false,
        ),
      );

  static StoredCredentialsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      StoredCredentialsStruct(
        email: convertAlgoliaParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: convertAlgoliaParam(
          data['password'],
          ParamType.String,
          false,
        ),
        isValid: convertAlgoliaParam(
          data['isValid'],
          ParamType.bool,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'StoredCredentialsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoredCredentialsStruct &&
        email == other.email &&
        password == other.password &&
        isValid == other.isValid;
  }

  @override
  int get hashCode => const ListEquality().hash([email, password, isValid]);
}

StoredCredentialsStruct createStoredCredentialsStruct({
  String? email,
  String? password,
  bool? isValid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StoredCredentialsStruct(
      email: email,
      password: password,
      isValid: isValid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StoredCredentialsStruct? updateStoredCredentialsStruct(
  StoredCredentialsStruct? storedCredentials, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    storedCredentials
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStoredCredentialsStructData(
  Map<String, dynamic> firestoreData,
  StoredCredentialsStruct? storedCredentials,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (storedCredentials == null) {
    return;
  }
  if (storedCredentials.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && storedCredentials.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final storedCredentialsData =
      getStoredCredentialsFirestoreData(storedCredentials, forFieldValue);
  final nestedData =
      storedCredentialsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = storedCredentials.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStoredCredentialsFirestoreData(
  StoredCredentialsStruct? storedCredentials, [
  bool forFieldValue = false,
]) {
  if (storedCredentials == null) {
    return {};
  }
  final firestoreData = mapToFirestore(storedCredentials.toMap());

  // Add any Firestore field values
  storedCredentials.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStoredCredentialsListFirestoreData(
  List<StoredCredentialsStruct>? storedCredentialss,
) =>
    storedCredentialss
        ?.map((e) => getStoredCredentialsFirestoreData(e, true))
        .toList() ??
    [];
