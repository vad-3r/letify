import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? DashboardLandlordWidget()
          : SignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? DashboardLandlordWidget()
              : SignInWidget(),
        ),
        FFRoute(
          name: OnBoardingWidget.routeName,
          path: OnBoardingWidget.routePath,
          builder: (context, params) => OnBoardingWidget(),
        ),
        FFRoute(
          name: SignInWidget.routeName,
          path: SignInWidget.routePath,
          builder: (context, params) => SignInWidget(),
        ),
        FFRoute(
          name: L1PortfolioListWidget.routeName,
          path: L1PortfolioListWidget.routePath,
          builder: (context, params) => L1PortfolioListWidget(),
        ),
        FFRoute(
          name: L4AddPropertyWidget.routeName,
          path: L4AddPropertyWidget.routePath,
          builder: (context, params) => L4AddPropertyWidget(
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: L5PropertyDetailsWidget.routeName,
          path: L5PropertyDetailsWidget.routePath,
          builder: (context, params) => L5PropertyDetailsWidget(
            portolioId: params.getParam(
              'portolioId',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertIDString: params.getParam(
              'propertIDString',
              ParamType.String,
            ),
            portfolioIDString: params.getParam(
              'portfolioIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: StudentDashboard1Widget.routeName,
          path: StudentDashboard1Widget.routePath,
          requireAuth: true,
          builder: (context, params) => StudentDashboard1Widget(),
        ),
        FFRoute(
          name: FixitScreenWidget.routeName,
          path: FixitScreenWidget.routePath,
          builder: (context, params) => FixitScreenWidget(),
        ),
        FFRoute(
          name: OwnerContractsWidget.routeName,
          path: OwnerContractsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OwnerContractsWidget(),
        ),
        FFRoute(
          name: ContractBuilderWidget.routeName,
          path: ContractBuilderWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ContractBuilderWidget(),
        ),
        FFRoute(
          name: SignUp1Widget.routeName,
          path: SignUp1Widget.routePath,
          builder: (context, params) => SignUp1Widget(),
        ),
        FFRoute(
          name: SignUp2Widget.routeName,
          path: SignUp2Widget.routePath,
          builder: (context, params) => SignUp2Widget(
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
            userSurname: params.getParam(
              'userSurname',
              ParamType.String,
            ),
            userEmaill: params.getParam(
              'userEmaill',
              ParamType.String,
            ),
            userPhoneNumebr: params.getParam(
              'userPhoneNumebr',
              ParamType.String,
            ),
            userPassword: params.getParam(
              'userPassword',
              ParamType.String,
            ),
            userConfirmPassword: params.getParam(
              'userConfirmPassword',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: WifiSpeedtestWidget.routeName,
          path: WifiSpeedtestWidget.routePath,
          builder: (context, params) => WifiSpeedtestWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: L3PropertyListWidget.routeName,
          path: L3PropertyListWidget.routePath,
          builder: (context, params) => L3PropertyListWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: L2AddPortfolioDetailsWidget.routeName,
          path: L2AddPortfolioDetailsWidget.routePath,
          builder: (context, params) => L2AddPortfolioDetailsWidget(),
        ),
        FFRoute(
          name: L7AddRoomWidget.routeName,
          path: L7AddRoomWidget.routePath,
          builder: (context, params) => L7AddRoomWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyIDString: params.getParam(
              'propertyIDString',
              ParamType.String,
            ),
            portfolioIDString: params.getParam(
              'portfolioIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PropertyListWidget.routeName,
          path: PropertyListWidget.routePath,
          builder: (context, params) => PropertyListWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
          ),
        ),
        FFRoute(
          name: PortfolioListWidget.routeName,
          path: PortfolioListWidget.routePath,
          builder: (context, params) => PortfolioListWidget(),
        ),
        FFRoute(
          name: SearchForTenantWidget.routeName,
          path: SearchForTenantWidget.routePath,
          asyncParams: {
            'roomID': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => SearchForTenantWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.Document,
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: StudentScreeningWidget.routeName,
          path: StudentScreeningWidget.routePath,
          builder: (context, params) => StudentScreeningWidget(),
        ),
        FFRoute(
          name: LinkContractWidget.routeName,
          path: LinkContractWidget.routePath,
          asyncParams: {
            'roomID': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => LinkContractWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.Document,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            tenantID: params.getParam(
              'tenantID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: StudentContractsScreeningWidget.routeName,
          path: StudentContractsScreeningWidget.routePath,
          requireAuth: true,
          builder: (context, params) => StudentContractsScreeningWidget(),
        ),
        FFRoute(
          name: ContractDetailsWidget.routeName,
          path: ContractDetailsWidget.routePath,
          builder: (context, params) => ContractDetailsWidget(
            contractID: params.getParam(
              'contractID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: StudentContractDetailsInputWidget.routeName,
          path: StudentContractDetailsInputWidget.routePath,
          requireAuth: true,
          builder: (context, params) => StudentContractDetailsInputWidget(
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            tenantinfoID: params.getParam(
              'tenantinfoID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract1Widget.routeName,
          path: StudentContract1Widget.routePath,
          builder: (context, params) => StudentContract1Widget(
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            tenantInfoID: params.getParam(
              'tenantInfoID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract2Widget.routeName,
          path: StudentContract2Widget.routePath,
          builder: (context, params) => StudentContract2Widget(
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            tenantinfoID: params.getParam(
              'tenantinfoID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract3Widget.routeName,
          path: StudentContract3Widget.routePath,
          builder: (context, params) => StudentContract3Widget(
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            tenantinfo: params.getParam(
              'tenantinfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract4Widget.routeName,
          path: StudentContract4Widget.routePath,
          builder: (context, params) => StudentContract4Widget(
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            tenantinfo: params.getParam(
              'tenantinfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract5Widget.routeName,
          path: StudentContract5Widget.routePath,
          builder: (context, params) => StudentContract5Widget(
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            tenantinfo: params.getParam(
              'tenantinfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract6Widget.routeName,
          path: StudentContract6Widget.routePath,
          builder: (context, params) => StudentContract6Widget(
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            tenantinfo: params.getParam(
              'tenantinfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContract7Widget.routeName,
          path: StudentContract7Widget.routePath,
          builder: (context, params) => StudentContract7Widget(
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            tenantID: params.getParam(
              'tenantID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: TenantContractsIDWidget.routeName,
          path: TenantContractsIDWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantContractsIDWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantContractDetailsWidget.routeName,
          path: TenantContractDetailsWidget.routePath,
          builder: (context, params) => TenantContractDetailsWidget(
            contractID: params.getParam(
              'contractID',
              ParamType.String,
            ),
            studentID: params.getParam(
              'studentID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            propertyIDString: params.getParam(
              'propertyIDString',
              ParamType.String,
            ),
            roomNam: params.getParam(
              'roomNam',
              ParamType.String,
            ),
            studentNumber: params.getParam(
              'studentNumber',
              ParamType.String,
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Room'],
            ),
          ),
        ),
        FFRoute(
          name: HousematesWidget.routeName,
          path: HousematesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HousematesWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: MyHomeWidget.routeName,
          path: MyHomeWidget.routePath,
          builder: (context, params) => MyHomeWidget(),
        ),
        FFRoute(
          name: L9PortfolioDetailsWidget.routeName,
          path: L9PortfolioDetailsWidget.routePath,
          builder: (context, params) => L9PortfolioDetailsWidget(
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OwnerListWidget.routeName,
          path: OwnerListWidget.routePath,
          builder: (context, params) => OwnerListWidget(
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
            ownerEmail: params.getParam(
              'ownerEmail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RoomBuilderWidget.routeName,
          path: RoomBuilderWidget.routePath,
          builder: (context, params) => RoomBuilderWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
            propertyIDString: params.getParam(
              'propertyIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CommunicationHouseWidget.routeName,
          path: CommunicationHouseWidget.routePath,
          builder: (context, params) => CommunicationHouseWidget(),
        ),
        FFRoute(
          name: CommunicationsWidget.routeName,
          path: CommunicationsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CommunicationsWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            landlordID: params.getParam(
              'landlordID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: AnonymousTipOffWidget.routeName,
          path: AnonymousTipOffWidget.routePath,
          builder: (context, params) => AnonymousTipOffWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            landlordID: params.getParam(
              'landlordID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: AnonymousMessageWidget.routeName,
          path: AnonymousMessageWidget.routePath,
          builder: (context, params) => AnonymousMessageWidget(
            tipOffID: params.getParam(
              'tipOffID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Tip_offs'],
            ),
          ),
        ),
        FFRoute(
          name: PropertiesForCommunicationWidget.routeName,
          path: PropertiesForCommunicationWidget.routePath,
          builder: (context, params) => PropertiesForCommunicationWidget(),
        ),
        FFRoute(
          name: InfoBoardCreateWidget.routeName,
          path: InfoBoardCreateWidget.routePath,
          builder: (context, params) => InfoBoardCreateWidget(),
        ),
        FFRoute(
          name: InfoBoardMessageWidget.routeName,
          path: InfoBoardMessageWidget.routePath,
          builder: (context, params) => InfoBoardMessageWidget(
            infoBoardID: params.getParam(
              'infoBoardID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['InfoBoard'],
            ),
          ),
        ),
        FFRoute(
          name: InfoBoardListWidget.routeName,
          path: InfoBoardListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => InfoBoardListWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: InfoBoardMessageTenantWidget.routeName,
          path: InfoBoardMessageTenantWidget.routePath,
          builder: (context, params) => InfoBoardMessageTenantWidget(
            infoBoardIDString: params.getParam(
              'infoBoardIDString',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: StudentContractPortalStart0Widget.routeName,
          path: StudentContractPortalStart0Widget.routePath,
          builder: (context, params) => StudentContractPortalStart0Widget(
            contractIDString: params.getParam(
              'contractIDString',
              ParamType.String,
            ),
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
            tenantinfo: params.getParam(
              'tenantinfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
          ),
        ),
        FFRoute(
          name: InfoBoardCommunicationHouseWidget.routeName,
          path: InfoBoardCommunicationHouseWidget.routePath,
          builder: (context, params) => InfoBoardCommunicationHouseWidget(),
        ),
        FFRoute(
          name: Screening3Widget.routeName,
          path: Screening3Widget.routePath,
          builder: (context, params) => Screening3Widget(
            screeningInfoID: params.getParam(
              'screeningInfoID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Info'],
            ),
          ),
        ),
        FFRoute(
          name: Screening1Widget.routeName,
          path: Screening1Widget.routePath,
          builder: (context, params) => Screening1Widget(
            screeningInfoIS: params.getParam(
              'screeningInfoIS',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Info'],
            ),
          ),
        ),
        FFRoute(
          name: Screening2Widget.routeName,
          path: Screening2Widget.routePath,
          builder: (context, params) => Screening2Widget(
            screeningInfoID: params.getParam(
              'screeningInfoID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Info'],
            ),
          ),
        ),
        FFRoute(
          name: Screening4Widget.routeName,
          path: Screening4Widget.routePath,
          builder: (context, params) => Screening4Widget(
            screeningID: params.getParam(
              'screeningID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Info'],
            ),
          ),
        ),
        FFRoute(
          name: ContractManagerWidget.routeName,
          path: ContractManagerWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ContractManagerWidget(),
        ),
        FFRoute(
          name: TenantSearchedScreeningWidget.routeName,
          path: TenantSearchedScreeningWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantSearchedScreeningWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantScreeningDetailsWidget.routeName,
          path: TenantScreeningDetailsWidget.routePath,
          builder: (context, params) => TenantScreeningDetailsWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
            screeningIDString: params.getParam(
              'screeningIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SearchForTenantContractsWidget.routeName,
          path: SearchForTenantContractsWidget.routePath,
          builder: (context, params) => SearchForTenantContractsWidget(),
        ),
        FFRoute(
          name: SearchForOwnerEmailWidget.routeName,
          path: SearchForOwnerEmailWidget.routePath,
          builder: (context, params) => SearchForOwnerEmailWidget(
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioIDString: params.getParam(
              'portfolioIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantScreeningListWidget.routeName,
          path: TenantScreeningListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantScreeningListWidget(),
        ),
        FFRoute(
          name: TermsOfUseWidget.routeName,
          path: TermsOfUseWidget.routePath,
          builder: (context, params) => TermsOfUseWidget(),
        ),
        FFRoute(
          name: UnitAnalyticsWidget.routeName,
          path: UnitAnalyticsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UnitAnalyticsWidget(
            allRooms: params.getParam(
              'allRooms',
              ParamType.int,
            ),
            allVacantRooms: params.getParam(
              'allVacantRooms',
              ParamType.int,
            ),
            allSingleRooms: params.getParam(
              'allSingleRooms',
              ParamType.int,
            ),
            allSingleVacantRooms: params.getParam(
              'allSingleVacantRooms',
              ParamType.int,
            ),
            allSharingRooms: params.getParam(
              'allSharingRooms',
              ParamType.int,
            ),
            allVacantSharingRooms: params.getParam(
              'allVacantSharingRooms',
              ParamType.int,
            ),
            allBachelorRooms: params.getParam(
              'allBachelorRooms',
              ParamType.int,
            ),
            allVacantBachelorRooms: params.getParam(
              'allVacantBachelorRooms',
              ParamType.int,
            ),
            allFlatRooms: params.getParam(
              'allFlatRooms',
              ParamType.int,
            ),
            allVacantFlatRooms: params.getParam(
              'allVacantFlatRooms',
              ParamType.int,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioIDString: params.getParam(
              'portfolioIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LinkedPortfoliosWidget.routeName,
          path: LinkedPortfoliosWidget.routePath,
          builder: (context, params) => LinkedPortfoliosWidget(),
        ),
        FFRoute(
          name: LinkedPropertiesWidget.routeName,
          path: LinkedPropertiesWidget.routePath,
          builder: (context, params) => LinkedPropertiesWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: HomeBuilderWidget.routeName,
          path: HomeBuilderWidget.routePath,
          builder: (context, params) => HomeBuilderWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LinkTenantStudentNumWidget.routeName,
          path: LinkTenantStudentNumWidget.routePath,
          asyncParams: {
            'roomID': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => LinkTenantStudentNumWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.Document,
            ),
            iDNumber: params.getParam(
              'iDNumber',
              ParamType.String,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LinkTenantIDWidget.routeName,
          path: LinkTenantIDWidget.routePath,
          asyncParams: {
            'roomID': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => LinkTenantIDWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.Document,
            ),
            iDNumber: params.getParam(
              'iDNumber',
              ParamType.String,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantContractsStudentNumWidget.routeName,
          path: TenantContractsStudentNumWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantContractsStudentNumWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            propertyIDString: params.getParam(
              'propertyIDString',
              ParamType.String,
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
            studentNumber: params.getParam(
              'studentNumber',
              ParamType.String,
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Room'],
            ),
          ),
        ),
        FFRoute(
          name: EmergencyWidget.routeName,
          path: EmergencyWidget.routePath,
          builder: (context, params) => EmergencyWidget(),
        ),
        FFRoute(
          name: L9PortfolioDetailsLinkedWidget.routeName,
          path: L9PortfolioDetailsLinkedWidget.routePath,
          builder: (context, params) => L9PortfolioDetailsLinkedWidget(
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: UnitAnalyticsLinkedWidget.routeName,
          path: UnitAnalyticsLinkedWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UnitAnalyticsLinkedWidget(
            allRooms: params.getParam(
              'allRooms',
              ParamType.int,
            ),
            allVacantRooms: params.getParam(
              'allVacantRooms',
              ParamType.int,
            ),
            allSingleRooms: params.getParam(
              'allSingleRooms',
              ParamType.int,
            ),
            allSingleVacantRooms: params.getParam(
              'allSingleVacantRooms',
              ParamType.int,
            ),
            allSharingRooms: params.getParam(
              'allSharingRooms',
              ParamType.int,
            ),
            allVacantSharingRooms: params.getParam(
              'allVacantSharingRooms',
              ParamType.int,
            ),
            allBachelorRooms: params.getParam(
              'allBachelorRooms',
              ParamType.int,
            ),
            allVacantBachelorRooms: params.getParam(
              'allVacantBachelorRooms',
              ParamType.int,
            ),
            allFlatRooms: params.getParam(
              'allFlatRooms',
              ParamType.int,
            ),
            allVacantFlatRooms: params.getParam(
              'allVacantFlatRooms',
              ParamType.int,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioIDString: params.getParam(
              'portfolioIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LandlordDashboardCopyWidget.routeName,
          path: LandlordDashboardCopyWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LandlordDashboardCopyWidget(),
        ),
        FFRoute(
          name: DashboardLandlordWidget.routeName,
          path: DashboardLandlordWidget.routePath,
          builder: (context, params) => DashboardLandlordWidget(),
        ),
        FFRoute(
          name: LandingPageWidget.routeName,
          path: LandingPageWidget.routePath,
          builder: (context, params) => LandingPageWidget(),
        ),
        FFRoute(
          name: LandlordDashboardCopy2Widget.routeName,
          path: LandlordDashboardCopy2Widget.routePath,
          requireAuth: true,
          builder: (context, params) => LandlordDashboardCopy2Widget(),
        ),
        FFRoute(
          name: HoouseRulesWidget.routeName,
          path: HoouseRulesWidget.routePath,
          builder: (context, params) => HoouseRulesWidget(),
        ),
        FFRoute(
          name: WiFIWidget.routeName,
          path: WiFIWidget.routePath,
          builder: (context, params) => WiFIWidget(),
        ),
        FFRoute(
          name: WifiFAQWidget.routeName,
          path: WifiFAQWidget.routePath,
          builder: (context, params) => WifiFAQWidget(),
        ),
        FFRoute(
          name: L5subPropertyWifiSetupWidget.routeName,
          path: L5subPropertyWifiSetupWidget.routePath,
          builder: (context, params) => L5subPropertyWifiSetupWidget(
            portolioId: params.getParam(
              'portolioId',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertIDString: params.getParam(
              'propertIDString',
              ParamType.String,
            ),
            portfolioIDString: params.getParam(
              'portfolioIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: WifiSupportWidget.routeName,
          path: WifiSupportWidget.routePath,
          builder: (context, params) => WifiSupportWidget(),
        ),
        FFRoute(
          name: WifiPasswordWidget.routeName,
          path: WifiPasswordWidget.routePath,
          builder: (context, params) => WifiPasswordWidget(),
        ),
        FFRoute(
          name: WifiRulesWidget.routeName,
          path: WifiRulesWidget.routePath,
          builder: (context, params) => WifiRulesWidget(),
        ),
        FFRoute(
          name: GenericWifiRulesWidget.routeName,
          path: GenericWifiRulesWidget.routePath,
          builder: (context, params) => GenericWifiRulesWidget(),
        ),
        FFRoute(
          name: InfoboardListCorkWidget.routeName,
          path: InfoboardListCorkWidget.routePath,
          builder: (context, params) => InfoboardListCorkWidget(),
        ),
        FFRoute(
          name: GroupLinksWidget.routeName,
          path: GroupLinksWidget.routePath,
          builder: (context, params) => GroupLinksWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: EmployeeDashboardWidget.routeName,
          path: EmployeeDashboardWidget.routePath,
          builder: (context, params) => EmployeeDashboardWidget(),
        ),
        FFRoute(
          name: LinkedPortsWidget.routeName,
          path: LinkedPortsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LinkedPortsWidget(),
        ),
        FFRoute(
          name: RoomOccupantWidget.routeName,
          path: RoomOccupantWidget.routePath,
          builder: (context, params) => RoomOccupantWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Room'],
            ),
            roomName: params.getParam(
              'roomName',
              ParamType.String,
            ),
            tenantInRoom: params.getParam(
              'tenantInRoom',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            isGenerated: params.getParam(
              'isGenerated',
              ParamType.bool,
            ),
            roomStatus: params.getParam(
              'roomStatus',
              ParamType.String,
            ),
            roomIDString: params.getParam(
              'roomIDString',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            propertyIDString: params.getParam(
              'propertyIDString',
              ParamType.String,
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PreLinkContractWidget.routeName,
          path: PreLinkContractWidget.routePath,
          asyncParams: {
            'roomID': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => PreLinkContractWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.Document,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            tenantID: params.getParam(
              'tenantID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
            prelinkedTenantID: params.getParam(
              'prelinkedTenantID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Prelinked_Tenants'],
            ),
          ),
        ),
        FFRoute(
          name: DeleteReasonWidget.routeName,
          path: DeleteReasonWidget.routePath,
          builder: (context, params) => DeleteReasonWidget(
            tenantInfo: params.getParam(
              'tenantInfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract', 'tenant_info'],
            ),
            room: params.getParam(
              'room',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Room'],
            ),
            property: params.getParam(
              'property',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            screeningInfo: params.getParam(
              'screeningInfo',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Info'],
            ),
            student: params.getParam(
              'student',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Student'],
            ),
            contract: params.getParam(
              'contract',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
          ),
        ),
        FFRoute(
          name: PersonalDetailsStudentWidget.routeName,
          path: PersonalDetailsStudentWidget.routePath,
          builder: (context, params) => PersonalDetailsStudentWidget(),
        ),
        FFRoute(
          name: L1PortfolioListCopyWidget.routeName,
          path: L1PortfolioListCopyWidget.routePath,
          builder: (context, params) => L1PortfolioListCopyWidget(),
        ),
        FFRoute(
          name: AgentPermissionsWidget.routeName,
          path: AgentPermissionsWidget.routePath,
          builder: (context, params) => AgentPermissionsWidget(),
        ),
        FFRoute(
          name: SearchForEmployeeEmailWidget.routeName,
          path: SearchForEmployeeEmailWidget.routePath,
          builder: (context, params) => SearchForEmployeeEmailWidget(),
        ),
        FFRoute(
          name: EmployeeListWidget.routeName,
          path: EmployeeListWidget.routePath,
          builder: (context, params) => EmployeeListWidget(
            employeeEmail: params.getParam(
              'employeeEmail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TermsOfUseEmailChangeWidget.routeName,
          path: TermsOfUseEmailChangeWidget.routePath,
          builder: (context, params) => TermsOfUseEmailChangeWidget(),
        ),
        FFRoute(
          name: TenantIDWidget.routeName,
          path: TenantIDWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantIDWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
            studentList: params.getParam<DocumentReference>(
              'studentList',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['Student'],
            ),
          ),
        ),
        FFRoute(
          name: TenantStudentNumberWidget.routeName,
          path: TenantStudentNumberWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantStudentNumberWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantPhoneNumberWidget.routeName,
          path: TenantPhoneNumberWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantPhoneNumberWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantNameWidget.routeName,
          path: TenantNameWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantNameWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantSurnameWidget.routeName,
          path: TenantSurnameWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TenantSurnameWidget(
            tenantIDNumber: params.getParam(
              'tenantIDNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: TenantDetailsWidget.routeName,
          path: TenantDetailsWidget.routePath,
          builder: (context, params) => TenantDetailsWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            tenantName: params.getParam(
              'tenantName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PortfolioListAgentsWidget.routeName,
          path: PortfolioListAgentsWidget.routePath,
          builder: (context, params) => PortfolioListAgentsWidget(),
        ),
        FFRoute(
          name: PropertyListAgentsWidget.routeName,
          path: PropertyListAgentsWidget.routePath,
          builder: (context, params) => PropertyListAgentsWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
          ),
        ),
        FFRoute(
          name: HomeBuilderAgentWidget.routeName,
          path: HomeBuilderAgentWidget.routePath,
          builder: (context, params) => HomeBuilderAgentWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LinkContractAgentWidget.routeName,
          path: LinkContractAgentWidget.routePath,
          asyncParams: {
            'roomID': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => LinkContractAgentWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            roomID: params.getParam(
              'roomID',
              ParamType.Document,
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            tenantID: params.getParam(
              'tenantID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ContractsAgentsWidget.routeName,
          path: ContractsAgentsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ContractsAgentsWidget(),
        ),
        FFRoute(
          name: PersonalDetailsPropertyOwnerWidget.routeName,
          path: PersonalDetailsPropertyOwnerWidget.routePath,
          builder: (context, params) => PersonalDetailsPropertyOwnerWidget(),
        ),
        FFRoute(
          name: OwnerPermissionsWidget.routeName,
          path: OwnerPermissionsWidget.routePath,
          builder: (context, params) => OwnerPermissionsWidget(),
        ),
        FFRoute(
          name: LinkedPortsActionsWidget.routeName,
          path: LinkedPortsActionsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LinkedPortsActionsWidget(),
        ),
        FFRoute(
          name: PortfolioListOwnerWidget.routeName,
          path: PortfolioListOwnerWidget.routePath,
          builder: (context, params) => PortfolioListOwnerWidget(),
        ),
        FFRoute(
          name: PropertyListOwnerWidget.routeName,
          path: PropertyListOwnerWidget.routePath,
          builder: (context, params) => PropertyListOwnerWidget(
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
          ),
        ),
        FFRoute(
          name: HomeBuilderOwnerWidget.routeName,
          path: HomeBuilderOwnerWidget.routePath,
          builder: (context, params) => HomeBuilderOwnerWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            propertyStringID: params.getParam(
              'propertyStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ProfileStatisticsWidget.routeName,
          path: ProfileStatisticsWidget.routePath,
          builder: (context, params) => ProfileStatisticsWidget(),
        ),
        FFRoute(
          name: ContractDetailsAgentWidget.routeName,
          path: ContractDetailsAgentWidget.routePath,
          builder: (context, params) => ContractDetailsAgentWidget(
            contractID: params.getParam(
              'contractID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EmployeeStatsWidget.routeName,
          path: EmployeeStatsWidget.routePath,
          builder: (context, params) => EmployeeStatsWidget(),
        ),
        FFRoute(
          name: PortfoliosWidget.routeName,
          path: PortfoliosWidget.routePath,
          builder: (context, params) => PortfoliosWidget(),
        ),
        FFRoute(
          name: PortfolioListCopyWidget.routeName,
          path: PortfolioListCopyWidget.routePath,
          builder: (context, params) => PortfolioListCopyWidget(),
        ),
        FFRoute(
          name: PortfolioDetailsOwnerWidget.routeName,
          path: PortfolioDetailsOwnerWidget.routePath,
          builder: (context, params) => PortfolioDetailsOwnerWidget(
            portfolioID: params.getParam(
              'portfolioID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Portfolio'],
            ),
            portfolioName: params.getParam(
              'portfolioName',
              ParamType.String,
            ),
            portfolioStringID: params.getParam(
              'portfolioStringID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PropertyCommunicationWidget.routeName,
          path: PropertyCommunicationWidget.routePath,
          builder: (context, params) => PropertyCommunicationWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            landlordID: params.getParam(
              'landlordID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            tenantList: params.getParam<DocumentReference>(
              'tenantList',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
            propertyIDString: params.getParam(
              'propertyIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BroadcastingListWidget.routeName,
          path: BroadcastingListWidget.routePath,
          requireAuth: true,
          builder: (context, params) => BroadcastingListWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
            broadcastIDString: params.getParam(
              'broadcastIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BroadcastCreateWidget.routeName,
          path: BroadcastCreateWidget.routePath,
          builder: (context, params) => BroadcastCreateWidget(),
        ),
        FFRoute(
          name: BroadcastsCreatedWidget.routeName,
          path: BroadcastsCreatedWidget.routePath,
          requireAuth: true,
          builder: (context, params) => BroadcastsCreatedWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            landlordID: params.getParam(
              'landlordID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            tenantList: params.getParam<DocumentReference>(
              'tenantList',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: MessagingWidget.routeName,
          path: MessagingWidget.routePath,
          builder: (context, params) => MessagingWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
            broadcastIDString: params.getParam(
              'broadcastIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MessagingUniversalWidget.routeName,
          path: MessagingUniversalWidget.routePath,
          builder: (context, params) => MessagingUniversalWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
            broadcastIDString: params.getParam(
              'broadcastIDString',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MessagesListWidget.routeName,
          path: MessagesListWidget.routePath,
          builder: (context, params) => MessagesListWidget(
            contractID: params.getParam(
              'contractID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract'],
            ),
          ),
        ),
        FFRoute(
          name: MessageUniversalNewWidget.routeName,
          path: MessageUniversalNewWidget.routePath,
          builder: (context, params) => MessageUniversalNewWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ChatDetailsWidget.routeName,
          path: ChatDetailsWidget.routePath,
          builder: (context, params) => ChatDetailsWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
          ),
        ),
        FFRoute(
          name: HouseGroupCreateWidget.routeName,
          path: HouseGroupCreateWidget.routePath,
          builder: (context, params) => HouseGroupCreateWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: HouseGroupCreatedWidget.routeName,
          path: HouseGroupCreatedWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HouseGroupCreatedWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
            landlordID: params.getParam(
              'landlordID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            propertyName: params.getParam(
              'propertyName',
              ParamType.String,
            ),
            tenantList: params.getParam<DocumentReference>(
              'tenantList',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: PropertiesForHouseGroupWidget.routeName,
          path: PropertiesForHouseGroupWidget.routePath,
          builder: (context, params) => PropertiesForHouseGroupWidget(),
        ),
        FFRoute(
          name: MessageUniversalBackToDashWidget.routeName,
          path: MessageUniversalBackToDashWidget.routePath,
          builder: (context, params) => MessageUniversalBackToDashWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LinkedOwnersMessageWidget.routeName,
          path: LinkedOwnersMessageWidget.routePath,
          builder: (context, params) => LinkedOwnersMessageWidget(),
        ),
        FFRoute(
          name: PortfolioLinkedOwnersMessagingWidget.routeName,
          path: PortfolioLinkedOwnersMessagingWidget.routePath,
          builder: (context, params) => PortfolioLinkedOwnersMessagingWidget(),
        ),
        FFRoute(
          name: MessageSettingsTenantWidget.routeName,
          path: MessageSettingsTenantWidget.routePath,
          builder: (context, params) => MessageSettingsTenantWidget(),
        ),
        FFRoute(
          name: MessageSettingsCopyWidget.routeName,
          path: MessageSettingsCopyWidget.routePath,
          builder: (context, params) => MessageSettingsCopyWidget(),
        ),
        FFRoute(
          name: MessageSettingsLandlordWidget.routeName,
          path: MessageSettingsLandlordWidget.routePath,
          builder: (context, params) => MessageSettingsLandlordWidget(),
        ),
        FFRoute(
          name: PropertiesForMulitHouseGroupWidget.routeName,
          path: PropertiesForMulitHouseGroupWidget.routePath,
          builder: (context, params) => PropertiesForMulitHouseGroupWidget(),
        ),
        FFRoute(
          name: GroupCreateWidget.routeName,
          path: GroupCreateWidget.routePath,
          builder: (context, params) => GroupCreateWidget(
            reciepients: params.getParam<DocumentReference>(
              'reciepients',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
            propertyLst: params.getParam<DocumentReference>(
              'propertyLst',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: LiveLocationUserWidget.routeName,
          path: LiveLocationUserWidget.routePath,
          builder: (context, params) => LiveLocationUserWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastMessage: params.getParam(
              'broadcastMessage',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts', 'Broadcast_Messages'],
            ),
          ),
        ),
        FFRoute(
          name: LiveLocationOtherUserWidget.routeName,
          path: LiveLocationOtherUserWidget.routePath,
          builder: (context, params) => LiveLocationOtherUserWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastMessage: params.getParam(
              'broadcastMessage',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts', 'Broadcast_Messages'],
            ),
          ),
        ),
        FFRoute(
          name: AddEmployeeWidget.routeName,
          path: AddEmployeeWidget.routePath,
          builder: (context, params) => AddEmployeeWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LiveLocationShareWidget.routeName,
          path: LiveLocationShareWidget.routePath,
          builder: (context, params) => LiveLocationShareWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            location: params.getParam(
              'location',
              ParamType.LatLng,
            ),
            reciepients: params.getParam<DocumentReference>(
              'reciepients',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: TennantContractPermissionsWidget.routeName,
          path: TennantContractPermissionsWidget.routePath,
          builder: (context, params) => TennantContractPermissionsWidget(
            tenantList: params.getParam<DocumentReference>(
              'tenantList',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: ChatDetailsCopyWidget.routeName,
          path: ChatDetailsCopyWidget.routePath,
          builder: (context, params) => ChatDetailsCopyWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
          ),
        ),
        FFRoute(
          name: AddPropertyToGroupWidget.routeName,
          path: AddPropertyToGroupWidget.routePath,
          builder: (context, params) => AddPropertyToGroupWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LiveLocationUserCopyWidget.routeName,
          path: LiveLocationUserCopyWidget.routePath,
          builder: (context, params) => LiveLocationUserCopyWidget(
            userID: params.getParam(
              'userID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['User'],
            ),
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastMessage: params.getParam(
              'broadcastMessage',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts', 'Broadcast_Messages'],
            ),
          ),
        ),
        FFRoute(
          name: FinanceDashboardWidget.routeName,
          path: FinanceDashboardWidget.routePath,
          builder: (context, params) => FinanceDashboardWidget(),
        ),
        FFRoute(
          name: ProperftFinanceManagementWidget.routeName,
          path: ProperftFinanceManagementWidget.routePath,
          builder: (context, params) => ProperftFinanceManagementWidget(),
        ),
        FFRoute(
          name: ProperftFinanceManagementRealWidget.routeName,
          path: ProperftFinanceManagementRealWidget.routePath,
          builder: (context, params) => ProperftFinanceManagementRealWidget(),
        ),
        FFRoute(
          name: MessageUniversalNewCopyWidget.routeName,
          path: MessageUniversalNewCopyWidget.routePath,
          builder: (context, params) => MessageUniversalNewCopyWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
            broadcastName: params.getParam(
              'broadcastName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PropertiesForHouseGroupAgentWidget.routeName,
          path: PropertiesForHouseGroupAgentWidget.routePath,
          builder: (context, params) => PropertiesForHouseGroupAgentWidget(),
        ),
        FFRoute(
          name: PropertiesForMulitHouseGroupAgentWidget.routeName,
          path: PropertiesForMulitHouseGroupAgentWidget.routePath,
          builder: (context, params) =>
              PropertiesForMulitHouseGroupAgentWidget(),
        ),
        FFRoute(
          name: HouseGroupCreateAgentWidget.routeName,
          path: HouseGroupCreateAgentWidget.routePath,
          builder: (context, params) => HouseGroupCreateAgentWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: GroupCreateAgentWidget.routeName,
          path: GroupCreateAgentWidget.routePath,
          builder: (context, params) => GroupCreateAgentWidget(
            reciepients: params.getParam<DocumentReference>(
              'reciepients',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
            propertyLst: params.getParam<DocumentReference>(
              'propertyLst',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: PermissionHandlingWidget.routeName,
          path: PermissionHandlingWidget.routePath,
          builder: (context, params) => PermissionHandlingWidget(),
        ),
        FFRoute(
          name: SecurityDashboardWidget.routeName,
          path: SecurityDashboardWidget.routePath,
          builder: (context, params) => SecurityDashboardWidget(),
        ),
        FFRoute(
          name: PasswordChangesWidget.routeName,
          path: PasswordChangesWidget.routePath,
          builder: (context, params) => PasswordChangesWidget(),
        ),
        FFRoute(
          name: CreateEmployeeGroupWidget.routeName,
          path: CreateEmployeeGroupWidget.routePath,
          builder: (context, params) => CreateEmployeeGroupWidget(),
        ),
        FFRoute(
          name: GroupCreateEmployeesWidget.routeName,
          path: GroupCreateEmployeesWidget.routePath,
          builder: (context, params) => GroupCreateEmployeesWidget(
            reciepients: params.getParam<DocumentReference>(
              'reciepients',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: SecurityProviderAdminWidget.routeName,
          path: SecurityProviderAdminWidget.routePath,
          builder: (context, params) => SecurityProviderAdminWidget(),
        ),
        FFRoute(
          name: EducationalInstDashboardWidget.routeName,
          path: EducationalInstDashboardWidget.routePath,
          builder: (context, params) => EducationalInstDashboardWidget(),
        ),
        FFRoute(
          name: CreateOwnerGroupWidget.routeName,
          path: CreateOwnerGroupWidget.routePath,
          builder: (context, params) => CreateOwnerGroupWidget(),
        ),
        FFRoute(
          name: GroupCreateOwnersWidget.routeName,
          path: GroupCreateOwnersWidget.routePath,
          builder: (context, params) => GroupCreateOwnersWidget(
            reciepients: params.getParam<DocumentReference>(
              'reciepients',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
          ),
        ),
        FFRoute(
          name: ChatDetailsManagementWidget.routeName,
          path: ChatDetailsManagementWidget.routePath,
          builder: (context, params) => ChatDetailsManagementWidget(
            broadcastID: params.getParam(
              'broadcastID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Broadcasts'],
            ),
          ),
        ),
        FFRoute(
          name: PropertiesForHouseManagementGroupsWidget.routeName,
          path: PropertiesForHouseManagementGroupsWidget.routePath,
          builder: (context, params) =>
              PropertiesForHouseManagementGroupsWidget(),
        ),
        FFRoute(
          name: HouseGroupCreateManagementWidget.routeName,
          path: HouseGroupCreateManagementWidget.routePath,
          builder: (context, params) => HouseGroupCreateManagementWidget(
            propertyID: params.getParam(
              'propertyID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Property'],
            ),
          ),
        ),
        FFRoute(
          name: FixitScreenCopyWidget.routeName,
          path: FixitScreenCopyWidget.routePath,
          builder: (context, params) => FixitScreenCopyWidget(),
        ),
        FFRoute(
          name: ChatBotWidget.routeName,
          path: ChatBotWidget.routePath,
          builder: (context, params) => ChatBotWidget(
            letifyChatBotID: params.getParam(
              'letifyChatBotID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Letify_Chatbot_Chats'],
            ),
            chatName: params.getParam(
              'chatName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: List10OrderHistoryWidget.routeName,
          path: List10OrderHistoryWidget.routePath,
          builder: (context, params) => List10OrderHistoryWidget(),
        ),
        FFRoute(
          name: PropertiesForCommunicationAgentWidget.routeName,
          path: PropertiesForCommunicationAgentWidget.routePath,
          builder: (context, params) => PropertiesForCommunicationAgentWidget(),
        ),
        FFRoute(
          name: VideoWidget.routeName,
          path: VideoWidget.routePath,
          builder: (context, params) => VideoWidget(),
        ),
        FFRoute(
          name: VideoPlayerPageWidget.routeName,
          path: VideoPlayerPageWidget.routePath,
          builder: (context, params) => VideoPlayerPageWidget(
            infoboardID: params.getParam(
              'infoboardID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['InfoBoard'],
            ),
          ),
        ),
        FFRoute(
          name: VideoUploadPageWidget.routeName,
          path: VideoUploadPageWidget.routePath,
          builder: (context, params) => VideoUploadPageWidget(),
        ),
        FFRoute(
          name: ScreeningBuilderWidget.routeName,
          path: ScreeningBuilderWidget.routePath,
          builder: (context, params) => ScreeningBuilderWidget(),
        ),
        FFRoute(
          name: ScreeningBuilderCWidget.routeName,
          path: ScreeningBuilderCWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ScreeningBuilderCWidget(
            screeningBuilderID: params.getParam(
              'screeningBuilderID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Builder'],
            ),
          ),
        ),
        FFRoute(
          name: CustomContractBuilderWidget.routeName,
          path: CustomContractBuilderWidget.routePath,
          builder: (context, params) => CustomContractBuilderWidget(
            contractBuilderId: params.getParam(
              'contractBuilderId',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Contract_Builder'],
            ),
          ),
        ),
        FFRoute(
          name: OwnerScreeningsWidget.routeName,
          path: OwnerScreeningsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OwnerScreeningsWidget(),
        ),
        FFRoute(
          name: ScreeningBuilderDetailsWidget.routeName,
          path: ScreeningBuilderDetailsWidget.routePath,
          asyncParams: {
            'questions': getDocList(['Screening_Builder_Question'],
                ScreeningBuilderQuestionRecord.fromSnapshot),
          },
          builder: (context, params) => ScreeningBuilderDetailsWidget(
            screeningBuilderID: params.getParam(
              'screeningBuilderID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Builder'],
            ),
            questions: params.getParam<ScreeningBuilderQuestionRecord>(
              'questions',
              ParamType.Document,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: ScreeningBuilderFinalStageWidget.routeName,
          path: ScreeningBuilderFinalStageWidget.routePath,
          builder: (context, params) => ScreeningBuilderFinalStageWidget(
            screeningBuilderID: params.getParam(
              'screeningBuilderID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Screening_Builder'],
            ),
          ),
        ),
        FFRoute(
          name: OwnerScreeningManagerWidget.routeName,
          path: OwnerScreeningManagerWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OwnerScreeningManagerWidget(),
        ),
        FFRoute(
          name: OwnerContractsManagerWidget.routeName,
          path: OwnerContractsManagerWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OwnerContractsManagerWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/M5aaoaBvIKS7_1242_2688.png',
                        fit: BoxFit.cover,
                      ),
                    )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
