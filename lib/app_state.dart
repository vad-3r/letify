import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isGenerated = prefs.getBool('ff_isGenerated') ?? _isGenerated;
    });
    _safeInit(() {
      _timer = prefs.getInt('ff_timer') ?? _timer;
    });
    _safeInit(() {
      _tenantPermission =
          prefs.getBool('ff_tenantPermission') ?? _tenantPermission;
    });
    _safeInit(() {
      _biometricEnabled =
          prefs.getBool('ff_biometricEnabled') ?? _biometricEnabled;
    });
    _safeInit(() {
      _storedEmail = prefs.getString('ff_storedEmail') ?? _storedEmail;
    });
    _safeInit(() {
      _biometricSupported =
          prefs.getBool('ff_biometricSupported') ?? _biometricSupported;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_storedCredentials')) {
        try {
          final serializedData =
              prefs.getString('ff_storedCredentials') ?? '{}';
          _storedCredentials = StoredCredentialsStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _rememberCredentials =
          prefs.getBool('ff_rememberCredentials') ?? _rememberCredentials;
    });
    _safeInit(() {
      _emailForLogIn = prefs.getString('ff_emailForLogIn') ?? _emailForLogIn;
    });
    _safeInit(() {
      _passwordForLogin =
          prefs.getString('ff_passwordForLogin') ?? _passwordForLogin;
    });
    _safeInit(() {
      _whatsappIconShow =
          prefs.getBool('ff_whatsappIconShow') ?? _whatsappIconShow;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _montlyRent = 0.0;
  double get montlyRent => _montlyRent;
  set montlyRent(double value) {
    _montlyRent = value;
  }

  DateTime? _startDate = DateTime.fromMillisecondsSinceEpoch(1718697180000);
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
  }

  DateTime? _endDate = DateTime.fromMillisecondsSinceEpoch(1718697180000);
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
  }

  String _totalRent = '';
  String get totalRent => _totalRent;
  set totalRent(String value) {
    _totalRent = value;
  }

  DateTime? _dateofBirth = DateTime.fromMillisecondsSinceEpoch(1718866380000);
  DateTime? get dateofBirth => _dateofBirth;
  set dateofBirth(DateTime? value) {
    _dateofBirth = value;
  }

  String _textField = '';
  String get textField => _textField;
  set textField(String value) {
    _textField = value;
  }

  int _i = 0;
  int get i => _i;
  set i(int value) {
    _i = value;
  }

  int _numberOfRooms = 0;
  int get numberOfRooms => _numberOfRooms;
  set numberOfRooms(int value) {
    _numberOfRooms = value;
  }

  bool _isGenerated = false;
  bool get isGenerated => _isGenerated;
  set isGenerated(bool value) {
    _isGenerated = value;
    prefs.setBool('ff_isGenerated', value);
  }

  bool _searchBar = false;
  bool get searchBar => _searchBar;
  set searchBar(bool value) {
    _searchBar = value;
  }

  int _timer = 0;
  int get timer => _timer;
  set timer(int value) {
    _timer = value;
    prefs.setInt('ff_timer', value);
  }

  bool _tenantPermission = true;
  bool get tenantPermission => _tenantPermission;
  set tenantPermission(bool value) {
    _tenantPermission = value;
    prefs.setBool('ff_tenantPermission', value);
  }

  /// Tracks if location sharing is currently active
  bool _isLocationSharingActive = false;
  bool get isLocationSharingActive => _isLocationSharingActive;
  set isLocationSharingActive(bool value) {
    _isLocationSharingActive = value;
  }

  /// Stores remaining time as string
  String _locationSharingTimer = '0';
  String get locationSharingTimer => _locationSharingTimer;
  set locationSharingTimer(String value) {
    _locationSharingTimer = value;
  }

  /// When location sharing started
  DateTime? _locationSharingStartTime;
  DateTime? get locationSharingStartTime => _locationSharingStartTime;
  set locationSharingStartTime(DateTime? value) {
    _locationSharingStartTime = value;
  }

  /// Original duration selected (e.g., "10 minutes")
  String _locationSharingDuration = '';
  String get locationSharingDuration => _locationSharingDuration;
  set locationSharingDuration(String value) {
    _locationSharingDuration = value;
  }

  List<DocumentReference> _locationSharingDocRefs = [];
  List<DocumentReference> get locationSharingDocRefs => _locationSharingDocRefs;
  set locationSharingDocRefs(List<DocumentReference> value) {
    _locationSharingDocRefs = value;
  }

  void addToLocationSharingDocRefs(DocumentReference value) {
    locationSharingDocRefs.add(value);
  }

  void removeFromLocationSharingDocRefs(DocumentReference value) {
    locationSharingDocRefs.remove(value);
  }

  void removeAtIndexFromLocationSharingDocRefs(int index) {
    locationSharingDocRefs.removeAt(index);
  }

  void updateLocationSharingDocRefsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    locationSharingDocRefs[index] = updateFn(_locationSharingDocRefs[index]);
  }

  void insertAtIndexInLocationSharingDocRefs(
      int index, DocumentReference value) {
    locationSharingDocRefs.insert(index, value);
  }

  /// this is used by the reply feature to show user which user which user they
  /// are replying to
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? value) {
    _user = value;
  }

  bool _biometricEnabled = false;
  bool get biometricEnabled => _biometricEnabled;
  set biometricEnabled(bool value) {
    _biometricEnabled = value;
    prefs.setBool('ff_biometricEnabled', value);
  }

  String _storedEmail = '';
  String get storedEmail => _storedEmail;
  set storedEmail(String value) {
    _storedEmail = value;
    prefs.setString('ff_storedEmail', value);
  }

  bool _biometricSupported = false;
  bool get biometricSupported => _biometricSupported;
  set biometricSupported(bool value) {
    _biometricSupported = value;
    prefs.setBool('ff_biometricSupported', value);
  }

  StoredCredentialsStruct _storedCredentials =
      StoredCredentialsStruct.fromSerializableMap(jsonDecode(
          '{\"email\":\"\",\"password\":\"\",\"isValid\":\"false\"}'));
  StoredCredentialsStruct get storedCredentials => _storedCredentials;
  set storedCredentials(StoredCredentialsStruct value) {
    _storedCredentials = value;
    prefs.setString('ff_storedCredentials', value.serialize());
  }

  void updateStoredCredentialsStruct(
      Function(StoredCredentialsStruct) updateFn) {
    updateFn(_storedCredentials);
    prefs.setString('ff_storedCredentials', _storedCredentials.serialize());
  }

  bool _rememberCredentials = false;
  bool get rememberCredentials => _rememberCredentials;
  set rememberCredentials(bool value) {
    _rememberCredentials = value;
    prefs.setBool('ff_rememberCredentials', value);
  }

  String _emailForLogIn = '';
  String get emailForLogIn => _emailForLogIn;
  set emailForLogIn(String value) {
    _emailForLogIn = value;
    prefs.setString('ff_emailForLogIn', value);
  }

  String _passwordForLogin = '';
  String get passwordForLogin => _passwordForLogin;
  set passwordForLogin(String value) {
    _passwordForLogin = value;
    prefs.setString('ff_passwordForLogin', value);
  }

  bool _whatsappIconShow = true;
  bool get whatsappIconShow => _whatsappIconShow;
  set whatsappIconShow(bool value) {
    _whatsappIconShow = value;
    prefs.setBool('ff_whatsappIconShow', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
