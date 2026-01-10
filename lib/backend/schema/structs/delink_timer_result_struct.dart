// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DelinkTimerResultStruct extends FFFirebaseStruct {
  DelinkTimerResultStruct({
    bool? hasActiveTimer,
    bool? justStarted,
    int? timeRemainingMs,
    String? timeRemainingFormatted,
    int? elapsedTime,
    double? hoursRemaining,
    double? minutesRemaining,
    String? landlordId,
    String? message,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hasActiveTimer = hasActiveTimer,
        _justStarted = justStarted,
        _timeRemainingMs = timeRemainingMs,
        _timeRemainingFormatted = timeRemainingFormatted,
        _elapsedTime = elapsedTime,
        _hoursRemaining = hoursRemaining,
        _minutesRemaining = minutesRemaining,
        _landlordId = landlordId,
        _message = message,
        super(firestoreUtilData);

  // "hasActiveTimer" field.
  bool? _hasActiveTimer;
  bool get hasActiveTimer => _hasActiveTimer ?? false;
  set hasActiveTimer(bool? val) => _hasActiveTimer = val;

  bool hasHasActiveTimer() => _hasActiveTimer != null;

  // "justStarted" field.
  bool? _justStarted;
  bool get justStarted => _justStarted ?? false;
  set justStarted(bool? val) => _justStarted = val;

  bool hasJustStarted() => _justStarted != null;

  // "timeRemainingMs" field.
  int? _timeRemainingMs;
  int get timeRemainingMs => _timeRemainingMs ?? 0;
  set timeRemainingMs(int? val) => _timeRemainingMs = val;

  void incrementTimeRemainingMs(int amount) =>
      timeRemainingMs = timeRemainingMs + amount;

  bool hasTimeRemainingMs() => _timeRemainingMs != null;

  // "timeRemainingFormatted" field.
  String? _timeRemainingFormatted;
  String get timeRemainingFormatted => _timeRemainingFormatted ?? '';
  set timeRemainingFormatted(String? val) => _timeRemainingFormatted = val;

  bool hasTimeRemainingFormatted() => _timeRemainingFormatted != null;

  // "elapsedTime" field.
  int? _elapsedTime;
  int get elapsedTime => _elapsedTime ?? 0;
  set elapsedTime(int? val) => _elapsedTime = val;

  void incrementElapsedTime(int amount) => elapsedTime = elapsedTime + amount;

  bool hasElapsedTime() => _elapsedTime != null;

  // "hoursRemaining" field.
  double? _hoursRemaining;
  double get hoursRemaining => _hoursRemaining ?? 0.0;
  set hoursRemaining(double? val) => _hoursRemaining = val;

  void incrementHoursRemaining(double amount) =>
      hoursRemaining = hoursRemaining + amount;

  bool hasHoursRemaining() => _hoursRemaining != null;

  // "minutesRemaining" field.
  double? _minutesRemaining;
  double get minutesRemaining => _minutesRemaining ?? 0.0;
  set minutesRemaining(double? val) => _minutesRemaining = val;

  void incrementMinutesRemaining(double amount) =>
      minutesRemaining = minutesRemaining + amount;

  bool hasMinutesRemaining() => _minutesRemaining != null;

  // "landlordId" field.
  String? _landlordId;
  String get landlordId => _landlordId ?? '';
  set landlordId(String? val) => _landlordId = val;

  bool hasLandlordId() => _landlordId != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static DelinkTimerResultStruct fromMap(Map<String, dynamic> data) =>
      DelinkTimerResultStruct(
        hasActiveTimer: data['hasActiveTimer'] as bool?,
        justStarted: data['justStarted'] as bool?,
        timeRemainingMs: castToType<int>(data['timeRemainingMs']),
        timeRemainingFormatted: data['timeRemainingFormatted'] as String?,
        elapsedTime: castToType<int>(data['elapsedTime']),
        hoursRemaining: castToType<double>(data['hoursRemaining']),
        minutesRemaining: castToType<double>(data['minutesRemaining']),
        landlordId: data['landlordId'] as String?,
        message: data['message'] as String?,
      );

  static DelinkTimerResultStruct? maybeFromMap(dynamic data) => data is Map
      ? DelinkTimerResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'hasActiveTimer': _hasActiveTimer,
        'justStarted': _justStarted,
        'timeRemainingMs': _timeRemainingMs,
        'timeRemainingFormatted': _timeRemainingFormatted,
        'elapsedTime': _elapsedTime,
        'hoursRemaining': _hoursRemaining,
        'minutesRemaining': _minutesRemaining,
        'landlordId': _landlordId,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hasActiveTimer': serializeParam(
          _hasActiveTimer,
          ParamType.bool,
        ),
        'justStarted': serializeParam(
          _justStarted,
          ParamType.bool,
        ),
        'timeRemainingMs': serializeParam(
          _timeRemainingMs,
          ParamType.int,
        ),
        'timeRemainingFormatted': serializeParam(
          _timeRemainingFormatted,
          ParamType.String,
        ),
        'elapsedTime': serializeParam(
          _elapsedTime,
          ParamType.int,
        ),
        'hoursRemaining': serializeParam(
          _hoursRemaining,
          ParamType.double,
        ),
        'minutesRemaining': serializeParam(
          _minutesRemaining,
          ParamType.double,
        ),
        'landlordId': serializeParam(
          _landlordId,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static DelinkTimerResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DelinkTimerResultStruct(
        hasActiveTimer: deserializeParam(
          data['hasActiveTimer'],
          ParamType.bool,
          false,
        ),
        justStarted: deserializeParam(
          data['justStarted'],
          ParamType.bool,
          false,
        ),
        timeRemainingMs: deserializeParam(
          data['timeRemainingMs'],
          ParamType.int,
          false,
        ),
        timeRemainingFormatted: deserializeParam(
          data['timeRemainingFormatted'],
          ParamType.String,
          false,
        ),
        elapsedTime: deserializeParam(
          data['elapsedTime'],
          ParamType.int,
          false,
        ),
        hoursRemaining: deserializeParam(
          data['hoursRemaining'],
          ParamType.double,
          false,
        ),
        minutesRemaining: deserializeParam(
          data['minutesRemaining'],
          ParamType.double,
          false,
        ),
        landlordId: deserializeParam(
          data['landlordId'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  static DelinkTimerResultStruct fromAlgoliaData(Map<String, dynamic> data) =>
      DelinkTimerResultStruct(
        hasActiveTimer: convertAlgoliaParam(
          data['hasActiveTimer'],
          ParamType.bool,
          false,
        ),
        justStarted: convertAlgoliaParam(
          data['justStarted'],
          ParamType.bool,
          false,
        ),
        timeRemainingMs: convertAlgoliaParam(
          data['timeRemainingMs'],
          ParamType.int,
          false,
        ),
        timeRemainingFormatted: convertAlgoliaParam(
          data['timeRemainingFormatted'],
          ParamType.String,
          false,
        ),
        elapsedTime: convertAlgoliaParam(
          data['elapsedTime'],
          ParamType.int,
          false,
        ),
        hoursRemaining: convertAlgoliaParam(
          data['hoursRemaining'],
          ParamType.double,
          false,
        ),
        minutesRemaining: convertAlgoliaParam(
          data['minutesRemaining'],
          ParamType.double,
          false,
        ),
        landlordId: convertAlgoliaParam(
          data['landlordId'],
          ParamType.String,
          false,
        ),
        message: convertAlgoliaParam(
          data['message'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'DelinkTimerResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DelinkTimerResultStruct &&
        hasActiveTimer == other.hasActiveTimer &&
        justStarted == other.justStarted &&
        timeRemainingMs == other.timeRemainingMs &&
        timeRemainingFormatted == other.timeRemainingFormatted &&
        elapsedTime == other.elapsedTime &&
        hoursRemaining == other.hoursRemaining &&
        minutesRemaining == other.minutesRemaining &&
        landlordId == other.landlordId &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([
        hasActiveTimer,
        justStarted,
        timeRemainingMs,
        timeRemainingFormatted,
        elapsedTime,
        hoursRemaining,
        minutesRemaining,
        landlordId,
        message
      ]);
}

DelinkTimerResultStruct createDelinkTimerResultStruct({
  bool? hasActiveTimer,
  bool? justStarted,
  int? timeRemainingMs,
  String? timeRemainingFormatted,
  int? elapsedTime,
  double? hoursRemaining,
  double? minutesRemaining,
  String? landlordId,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DelinkTimerResultStruct(
      hasActiveTimer: hasActiveTimer,
      justStarted: justStarted,
      timeRemainingMs: timeRemainingMs,
      timeRemainingFormatted: timeRemainingFormatted,
      elapsedTime: elapsedTime,
      hoursRemaining: hoursRemaining,
      minutesRemaining: minutesRemaining,
      landlordId: landlordId,
      message: message,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DelinkTimerResultStruct? updateDelinkTimerResultStruct(
  DelinkTimerResultStruct? delinkTimerResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    delinkTimerResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDelinkTimerResultStructData(
  Map<String, dynamic> firestoreData,
  DelinkTimerResultStruct? delinkTimerResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (delinkTimerResult == null) {
    return;
  }
  if (delinkTimerResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && delinkTimerResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final delinkTimerResultData =
      getDelinkTimerResultFirestoreData(delinkTimerResult, forFieldValue);
  final nestedData =
      delinkTimerResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = delinkTimerResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDelinkTimerResultFirestoreData(
  DelinkTimerResultStruct? delinkTimerResult, [
  bool forFieldValue = false,
]) {
  if (delinkTimerResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(delinkTimerResult.toMap());

  // Add any Firestore field values
  delinkTimerResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDelinkTimerResultListFirestoreData(
  List<DelinkTimerResultStruct>? delinkTimerResults,
) =>
    delinkTimerResults
        ?.map((e) => getDelinkTimerResultFirestoreData(e, true))
        .toList() ??
    [];
