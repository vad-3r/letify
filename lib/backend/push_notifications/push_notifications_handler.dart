import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? isWeb
          ? Container()
          : Container(
              color: Colors.transparent,
              child: Image.asset(
                'assets/images/M5aaoaBvIKS7_1242_2688.png',
                fit: BoxFit.cover,
              ),
            )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'On_Boarding': ParameterData.none(),
  'Sign_In': ParameterData.none(),
  'L1_Portfolio_list': ParameterData.none(),
  'L4_add_Property': (data) async => ParameterData(
        allParams: {
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
        },
      ),
  'L5_Property_Details': (data) async => ParameterData(
        allParams: {
          'portolioId': getParameter<DocumentReference>(data, 'portolioId'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertIDString': getParameter<String>(data, 'propertIDString'),
          'portfolioIDString': getParameter<String>(data, 'portfolioIDString'),
        },
      ),
  'Student_Dashboard1': ParameterData.none(),
  'Fixit_Screen': ParameterData.none(),
  'Owner_Contracts': ParameterData.none(),
  'Contract_Builder': ParameterData.none(),
  'SignUp_1': ParameterData.none(),
  'SignUp_2': (data) async => ParameterData(
        allParams: {
          'userName': getParameter<String>(data, 'userName'),
          'userSurname': getParameter<String>(data, 'userSurname'),
          'userEmaill': getParameter<String>(data, 'userEmaill'),
          'userPhoneNumebr': getParameter<String>(data, 'userPhoneNumebr'),
          'userPassword': getParameter<String>(data, 'userPassword'),
          'userConfirmPassword':
              getParameter<String>(data, 'userConfirmPassword'),
        },
      ),
  'wifi_speedtest': ParameterData.none(),
  'profile': ParameterData.none(),
  'L3_Property_list': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
        },
      ),
  'L2_add_portfolio_details': ParameterData.none(),
  'L7_add_Room': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyIDString': getParameter<String>(data, 'propertyIDString'),
          'portfolioIDString': getParameter<String>(data, 'portfolioIDString'),
        },
      ),
  'Property_list': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
        },
      ),
  'Portfolio_list': ParameterData.none(),
  'Search_For_Tenant': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'roomID': await getDocumentParameter<RoomRecord>(
              data, 'roomID', RoomRecord.fromSnapshot),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
          'roomName': getParameter<String>(data, 'roomName'),
        },
      ),
  'Student_Screening': ParameterData.none(),
  'Link_Contract': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'roomID': await getDocumentParameter<RoomRecord>(
              data, 'roomID', RoomRecord.fromSnapshot),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'tenantID': getParameter<DocumentReference>(data, 'tenantID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
        },
      ),
  'Student_Contracts_Screening': ParameterData.none(),
  'Contract_Details': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<String>(data, 'contractID'),
        },
      ),
  'Student_Contract_Details_Input': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'tenantinfoID': getParameter<DocumentReference>(data, 'tenantinfoID'),
        },
      ),
  'Student_Contract_1': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'tenantInfoID': getParameter<DocumentReference>(data, 'tenantInfoID'),
        },
      ),
  'Student_Contract_2': (data) async => ParameterData(
        allParams: {
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'tenantinfoID': getParameter<DocumentReference>(data, 'tenantinfoID'),
        },
      ),
  'Student_Contract_3': (data) async => ParameterData(
        allParams: {
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'tenantinfo': getParameter<DocumentReference>(data, 'tenantinfo'),
        },
      ),
  'Student_Contract_4': (data) async => ParameterData(
        allParams: {
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'tenantinfo': getParameter<DocumentReference>(data, 'tenantinfo'),
        },
      ),
  'Student_Contract_5': (data) async => ParameterData(
        allParams: {
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'tenantinfo': getParameter<DocumentReference>(data, 'tenantinfo'),
        },
      ),
  'Student_Contract_6': (data) async => ParameterData(
        allParams: {
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'tenantinfo': getParameter<DocumentReference>(data, 'tenantinfo'),
        },
      ),
  'Student_Contract_7': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'tenantID': getParameter<DocumentReference>(data, 'tenantID'),
        },
      ),
  'Tenant_Contracts_ID': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'TenantContract_Details': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<String>(data, 'contractID'),
          'studentID': getParameter<DocumentReference>(data, 'studentID'),
          'roomName': getParameter<String>(data, 'roomName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'propertyIDString': getParameter<String>(data, 'propertyIDString'),
          'roomNam': getParameter<String>(data, 'roomNam'),
          'studentNumber': getParameter<String>(data, 'studentNumber'),
          'roomID': getParameter<DocumentReference>(data, 'roomID'),
        },
      ),
  'Housemates': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'My_Home': ParameterData.none(),
  'L9_Portfolio_Details': (data) async => ParameterData(
        allParams: {
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
        },
      ),
  'Owner_List': (data) async => ParameterData(
        allParams: {
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
          'ownerEmail': getParameter<String>(data, 'ownerEmail'),
        },
      ),
  'Room_Builder': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
          'propertyIDString': getParameter<String>(data, 'propertyIDString'),
        },
      ),
  'Communication_House': ParameterData.none(),
  'Communications': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'landlordID': getParameter<DocumentReference>(data, 'landlordID'),
        },
      ),
  'Anonymous_Tip_Off': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'landlordID': getParameter<DocumentReference>(data, 'landlordID'),
        },
      ),
  'Anonymous_Message': (data) async => ParameterData(
        allParams: {
          'tipOffID': getParameter<DocumentReference>(data, 'tipOffID'),
        },
      ),
  'Properties_For_Communication': ParameterData.none(),
  'Info_Board_Create': ParameterData.none(),
  'InfoBoard_Message': (data) async => ParameterData(
        allParams: {
          'infoBoardID': getParameter<DocumentReference>(data, 'infoBoardID'),
        },
      ),
  'InfoBoard_List': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'InfoBoard_Message_tenant': (data) async => ParameterData(
        allParams: {
          'infoBoardIDString': getParameter<String>(data, 'infoBoardIDString'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'Student_Contract_Portal_Start_0': (data) async => ParameterData(
        allParams: {
          'contractIDString': getParameter<String>(data, 'contractIDString'),
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
          'tenantinfo': getParameter<DocumentReference>(data, 'tenantinfo'),
        },
      ),
  'InfoBoard_Communication_House': ParameterData.none(),
  'Screening_3': (data) async => ParameterData(
        allParams: {
          'screeningInfoID':
              getParameter<DocumentReference>(data, 'screeningInfoID'),
        },
      ),
  'Screening_1': (data) async => ParameterData(
        allParams: {
          'screeningInfoIS':
              getParameter<DocumentReference>(data, 'screeningInfoIS'),
        },
      ),
  'Screening_2': (data) async => ParameterData(
        allParams: {
          'screeningInfoID':
              getParameter<DocumentReference>(data, 'screeningInfoID'),
        },
      ),
  'Screening_4': (data) async => ParameterData(
        allParams: {
          'screeningID': getParameter<DocumentReference>(data, 'screeningID'),
        },
      ),
  'Contract_Manager': ParameterData.none(),
  'Tenant_Searched_Screening': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'TenantScreening_Details': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
          'screeningIDString': getParameter<String>(data, 'screeningIDString'),
        },
      ),
  'Search_For_TenantContracts': ParameterData.none(),
  'Search_For_Owner_Email': (data) async => ParameterData(
        allParams: {
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioIDString': getParameter<String>(data, 'portfolioIDString'),
        },
      ),
  'Tenant_Screening_List': ParameterData.none(),
  'Terms_Of_Use': ParameterData.none(),
  'Unit_Analytics': (data) async => ParameterData(
        allParams: {
          'allRooms': getParameter<int>(data, 'allRooms'),
          'allVacantRooms': getParameter<int>(data, 'allVacantRooms'),
          'allSingleRooms': getParameter<int>(data, 'allSingleRooms'),
          'allSingleVacantRooms':
              getParameter<int>(data, 'allSingleVacantRooms'),
          'allSharingRooms': getParameter<int>(data, 'allSharingRooms'),
          'allVacantSharingRooms':
              getParameter<int>(data, 'allVacantSharingRooms'),
          'allBachelorRooms': getParameter<int>(data, 'allBachelorRooms'),
          'allVacantBachelorRooms':
              getParameter<int>(data, 'allVacantBachelorRooms'),
          'allFlatRooms': getParameter<int>(data, 'allFlatRooms'),
          'allVacantFlatRooms': getParameter<int>(data, 'allVacantFlatRooms'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioIDString': getParameter<String>(data, 'portfolioIDString'),
        },
      ),
  'Linked_Portfolios': ParameterData.none(),
  'Linked_Properties': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
        },
      ),
  'Home_Builder': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
        },
      ),
  'Link_Tenant_Student_Num': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'roomID': await getDocumentParameter<RoomRecord>(
              data, 'roomID', RoomRecord.fromSnapshot),
          'iDNumber': getParameter<String>(data, 'iDNumber'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
          'roomName': getParameter<String>(data, 'roomName'),
        },
      ),
  'Link_TenantID': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'roomID': await getDocumentParameter<RoomRecord>(
              data, 'roomID', RoomRecord.fromSnapshot),
          'iDNumber': getParameter<String>(data, 'iDNumber'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
          'roomName': getParameter<String>(data, 'roomName'),
        },
      ),
  'Tenant_Contracts_Student_Num': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'propertyIDString': getParameter<String>(data, 'propertyIDString'),
          'roomName': getParameter<String>(data, 'roomName'),
          'studentNumber': getParameter<String>(data, 'studentNumber'),
          'roomID': getParameter<DocumentReference>(data, 'roomID'),
        },
      ),
  'Emergency': ParameterData.none(),
  'L9_Portfolio_Details_Linked': (data) async => ParameterData(
        allParams: {
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
        },
      ),
  'Unit_Analytics_Linked': (data) async => ParameterData(
        allParams: {
          'allRooms': getParameter<int>(data, 'allRooms'),
          'allVacantRooms': getParameter<int>(data, 'allVacantRooms'),
          'allSingleRooms': getParameter<int>(data, 'allSingleRooms'),
          'allSingleVacantRooms':
              getParameter<int>(data, 'allSingleVacantRooms'),
          'allSharingRooms': getParameter<int>(data, 'allSharingRooms'),
          'allVacantSharingRooms':
              getParameter<int>(data, 'allVacantSharingRooms'),
          'allBachelorRooms': getParameter<int>(data, 'allBachelorRooms'),
          'allVacantBachelorRooms':
              getParameter<int>(data, 'allVacantBachelorRooms'),
          'allFlatRooms': getParameter<int>(data, 'allFlatRooms'),
          'allVacantFlatRooms': getParameter<int>(data, 'allVacantFlatRooms'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioIDString': getParameter<String>(data, 'portfolioIDString'),
        },
      ),
  'Landlord_DashboardCopy': ParameterData.none(),
  'dashboard_landlord': ParameterData.none(),
  'Landing_Page': ParameterData.none(),
  'Landlord_DashboardCopy2': ParameterData.none(),
  'Hoouse_Rules': ParameterData.none(),
  'WiFI': ParameterData.none(),
  'Wifi_FAQ': ParameterData.none(),
  'L5sub_Property_Wifi_Setup': (data) async => ParameterData(
        allParams: {
          'portolioId': getParameter<DocumentReference>(data, 'portolioId'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertIDString': getParameter<String>(data, 'propertIDString'),
          'portfolioIDString': getParameter<String>(data, 'portfolioIDString'),
        },
      ),
  'Wifi_Support': ParameterData.none(),
  'Wifi_Password': ParameterData.none(),
  'Wifi_Rules': ParameterData.none(),
  'Generic_Wifi_Rules': ParameterData.none(),
  'Infoboard_List_Cork': ParameterData.none(),
  'Group_Links': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'Employee_Dashboard': ParameterData.none(),
  'Linked_Ports': ParameterData.none(),
  'Room_Occupant': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'roomID': getParameter<DocumentReference>(data, 'roomID'),
          'roomName': getParameter<String>(data, 'roomName'),
          'tenantInRoom': getParameter<DocumentReference>(data, 'tenantInRoom'),
          'isGenerated': getParameter<bool>(data, 'isGenerated'),
          'roomStatus': getParameter<String>(data, 'roomStatus'),
          'roomIDString': getParameter<String>(data, 'roomIDString'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'propertyIDString': getParameter<String>(data, 'propertyIDString'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
        },
      ),
  'PreLink_Contract': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'roomID': await getDocumentParameter<RoomRecord>(
              data, 'roomID', RoomRecord.fromSnapshot),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'tenantID': getParameter<DocumentReference>(data, 'tenantID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
          'prelinkedTenantID':
              getParameter<DocumentReference>(data, 'prelinkedTenantID'),
        },
      ),
  'Delete_Reason': (data) async => ParameterData(
        allParams: {
          'tenantInfo': getParameter<DocumentReference>(data, 'tenantInfo'),
          'room': getParameter<DocumentReference>(data, 'room'),
          'property': getParameter<DocumentReference>(data, 'property'),
          'screeningInfo':
              getParameter<DocumentReference>(data, 'screeningInfo'),
          'student': getParameter<DocumentReference>(data, 'student'),
          'contract': getParameter<DocumentReference>(data, 'contract'),
        },
      ),
  'Personal_Details_Student': ParameterData.none(),
  'L1_Portfolio_listCopy': ParameterData.none(),
  'Agent_Permissions': ParameterData.none(),
  'Search_For_Employee_Email': ParameterData.none(),
  'Employee_List': (data) async => ParameterData(
        allParams: {
          'employeeEmail': getParameter<String>(data, 'employeeEmail'),
        },
      ),
  'Terms_Of_Use_Email_Change': ParameterData.none(),
  'Tenant_ID': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'Tenant_Student_Number': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'Tenant_Phone_Number': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'Tenant_Name': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'Tenant_Surname': (data) async => ParameterData(
        allParams: {
          'tenantIDNumber': getParameter<String>(data, 'tenantIDNumber'),
        },
      ),
  'Tenant_Details': (data) async => ParameterData(
        allParams: {
          'userID': getParameter<DocumentReference>(data, 'userID'),
          'tenantName': getParameter<String>(data, 'tenantName'),
        },
      ),
  'Portfolio_list_Agents': ParameterData.none(),
  'Property_list_Agents': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
        },
      ),
  'Home_Builder_Agent': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
        },
      ),
  'Link_Contract_Agent': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'roomID': await getDocumentParameter<RoomRecord>(
              data, 'roomID', RoomRecord.fromSnapshot),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'tenantID': getParameter<DocumentReference>(data, 'tenantID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
        },
      ),
  'Contracts_Agents': ParameterData.none(),
  'Personal_Details_PropertyOwner': ParameterData.none(),
  'Owner_Permissions': ParameterData.none(),
  'Linked_Ports_Actions': ParameterData.none(),
  'Portfolio_list_owner': ParameterData.none(),
  'Property_list_owner': (data) async => ParameterData(
        allParams: {
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
        },
      ),
  'Home_Builder_owner': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'propertyStringID': getParameter<String>(data, 'propertyStringID'),
        },
      ),
  'Profile_Statistics': ParameterData.none(),
  'Contract_Details_Agent': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<String>(data, 'contractID'),
        },
      ),
  'Employee_Stats': ParameterData.none(),
  'Portfolios': ParameterData.none(),
  'Portfolio_listCopy': ParameterData.none(),
  'Portfolio_Details_Owner': (data) async => ParameterData(
        allParams: {
          'portfolioID': getParameter<DocumentReference>(data, 'portfolioID'),
          'portfolioName': getParameter<String>(data, 'portfolioName'),
          'portfolioStringID': getParameter<String>(data, 'portfolioStringID'),
        },
      ),
  'Property_Communication': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
          'landlordID': getParameter<DocumentReference>(data, 'landlordID'),
          'propertyIDString': getParameter<String>(data, 'propertyIDString'),
        },
      ),
  'Broadcasting_List': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
          'broadcastIDString': getParameter<String>(data, 'broadcastIDString'),
        },
      ),
  'Broadcast_create': ParameterData.none(),
  'Broadcasts_Created': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'landlordID': getParameter<DocumentReference>(data, 'landlordID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
        },
      ),
  'Messaging': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
          'broadcastIDString': getParameter<String>(data, 'broadcastIDString'),
        },
      ),
  'Messaging_Universal': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
          'broadcastIDString': getParameter<String>(data, 'broadcastIDString'),
        },
      ),
  'Messages_List': (data) async => ParameterData(
        allParams: {
          'contractID': getParameter<DocumentReference>(data, 'contractID'),
        },
      ),
  'Message_Universal_New': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
        },
      ),
  'Chat_Details': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
        },
      ),
  'House_Group_Create': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'House_Group_Created': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
          'landlordID': getParameter<DocumentReference>(data, 'landlordID'),
          'propertyName': getParameter<String>(data, 'propertyName'),
        },
      ),
  'Properties_For_House_Group': ParameterData.none(),
  'Message_Universal_Back_To_Dash': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
        },
      ),
  'Linked_Owners_Message': ParameterData.none(),
  'Portfolio_Linked_Owners_Messaging': ParameterData.none(),
  'Message_Settings_Tenant': ParameterData.none(),
  'Message_SettingsCopy': ParameterData.none(),
  'Message_Settings_Landlord': ParameterData.none(),
  'Properties_For_Mulit_House_Group': ParameterData.none(),
  'Group_Create': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'Live_Location_User': (data) async => ParameterData(
        allParams: {
          'userID': getParameter<DocumentReference>(data, 'userID'),
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastMessage':
              getParameter<DocumentReference>(data, 'broadcastMessage'),
        },
      ),
  'Live_Location_Other_User': (data) async => ParameterData(
        allParams: {
          'userID': getParameter<DocumentReference>(data, 'userID'),
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastMessage':
              getParameter<DocumentReference>(data, 'broadcastMessage'),
        },
      ),
  'Add_Employee': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
        },
      ),
  'Live_Location_Share': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'location': getParameter<LatLng>(data, 'location'),
        },
      ),
  'Tennant_Contract_Permissions': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'Chat_DetailsCopy': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
        },
      ),
  'Add_Property_To_Group': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
        },
      ),
  'Live_Location_UserCopy': (data) async => ParameterData(
        allParams: {
          'userID': getParameter<DocumentReference>(data, 'userID'),
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastMessage':
              getParameter<DocumentReference>(data, 'broadcastMessage'),
        },
      ),
  'Finance_Dashboard': ParameterData.none(),
  'Properft_Finance_Management': ParameterData.none(),
  'Properft_Finance_Management_Real': ParameterData.none(),
  'Message_Universal_NewCopy': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
          'broadcastName': getParameter<String>(data, 'broadcastName'),
        },
      ),
  'Properties_For_House_Group_Agent': ParameterData.none(),
  'Properties_For_Mulit_House_Group_Agent': ParameterData.none(),
  'House_Group_Create_Agent': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'Group_Create_Agent': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'Permission_Handling': ParameterData.none(),
  'Security_Dashboard': ParameterData.none(),
  'Password_Changes': ParameterData.none(),
  'Create_Employee_Group': ParameterData.none(),
  'Group_Create_Employees': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'Security_Provider_Admin': ParameterData.none(),
  'Educational_Inst_Dashboard': ParameterData.none(),
  'Create_Owner_Group': ParameterData.none(),
  'Group_Create_Owners': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'Chat_Details_Management': (data) async => ParameterData(
        allParams: {
          'broadcastID': getParameter<DocumentReference>(data, 'broadcastID'),
        },
      ),
  'Properties_For_House_Management_Groups': ParameterData.none(),
  'House_Group_Create_Management': (data) async => ParameterData(
        allParams: {
          'propertyID': getParameter<DocumentReference>(data, 'propertyID'),
        },
      ),
  'Fixit_ScreenCopy': ParameterData.none(),
  'Chat_bot': (data) async => ParameterData(
        allParams: {
          'letifyChatBotID':
              getParameter<DocumentReference>(data, 'letifyChatBotID'),
          'chatName': getParameter<String>(data, 'chatName'),
        },
      ),
  'List10OrderHistory': ParameterData.none(),
  'Properties_For_Communication_Agent': ParameterData.none(),
  'Video': ParameterData.none(),
  'Video_Player_Page': (data) async => ParameterData(
        allParams: {
          'infoboardID': getParameter<DocumentReference>(data, 'infoboardID'),
        },
      ),
  'Video_Upload_Page': ParameterData.none(),
  'Screening_Builder': ParameterData.none(),
  'Screening_BuilderC': (data) async => ParameterData(
        allParams: {
          'screeningBuilderID':
              getParameter<DocumentReference>(data, 'screeningBuilderID'),
        },
      ),
  'CustomContractBuilder': (data) async => ParameterData(
        allParams: {
          'contractBuilderId':
              getParameter<DocumentReference>(data, 'contractBuilderId'),
        },
      ),
  'Owner_Screenings': ParameterData.none(),
  'Screening_Builder_Details': (data) async => ParameterData(
        allParams: {
          'screeningBuilderID':
              getParameter<DocumentReference>(data, 'screeningBuilderID'),
        },
      ),
  'Screening_Builder_Final_Stage': (data) async => ParameterData(
        allParams: {
          'screeningBuilderID':
              getParameter<DocumentReference>(data, 'screeningBuilderID'),
        },
      ),
  'Owner_Screening_Manager': ParameterData.none(),
  'Owner_Contracts_Manager': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
