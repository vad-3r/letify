import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/portfolio_record.dart';
import 'schema/property_record.dart';
import 'schema/room_record.dart';
import 'schema/student_record.dart';
import 'schema/landlord_record.dart';
import 'schema/agency_record.dart';
import 'schema/user_record.dart';
import 'schema/contract_record.dart';
import 'schema/contract_paths_record.dart';
import 'schema/tenant_info_record.dart';
import 'schema/tip_offs_record.dart';
import 'schema/info_board_record.dart';
import 'schema/screening_info_record.dart';
import 'schema/analytics_record.dart';
import 'schema/announcements_record.dart';
import 'schema/complaints_record.dart';
import 'schema/prelinked_tenants_record.dart';
import 'schema/deleted_accounts_record.dart';
import 'schema/agent_record.dart';
import 'schema/archived_tenants_record.dart';
import 'schema/broadcasts_record.dart';
import 'schema/broadcast_messages_record.dart';
import 'schema/chats_record.dart';
import 'schema/chat_messages_record.dart';
import 'schema/automated_messages_record.dart';
import 'schema/incidents_record.dart';
import 'schema/security_providers_record.dart';
import 'schema/security_guards_record.dart';
import 'schema/panic_button_alert_record.dart';
import 'schema/educational_institution_record.dart';
import 'schema/letify_chatbot_chats_record.dart';
import 'schema/chatbot_messsages_record.dart';
import 'schema/ticket_lodging_record.dart';
import 'schema/screening_builder_question_record.dart';
import 'schema/screening_builder_record.dart';
import 'schema/screening_builder_answers_record.dart';
import 'schema/contract_builder_record.dart';
import 'schema/contract_builder_main_clause_record.dart';
import 'schema/contract_builder_sub_clause_record.dart';
import 'dart:async';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/portfolio_record.dart';
export 'schema/property_record.dart';
export 'schema/room_record.dart';
export 'schema/student_record.dart';
export 'schema/landlord_record.dart';
export 'schema/agency_record.dart';
export 'schema/user_record.dart';
export 'schema/contract_record.dart';
export 'schema/contract_paths_record.dart';
export 'schema/tenant_info_record.dart';
export 'schema/tip_offs_record.dart';
export 'schema/info_board_record.dart';
export 'schema/screening_info_record.dart';
export 'schema/analytics_record.dart';
export 'schema/announcements_record.dart';
export 'schema/complaints_record.dart';
export 'schema/prelinked_tenants_record.dart';
export 'schema/deleted_accounts_record.dart';
export 'schema/agent_record.dart';
export 'schema/archived_tenants_record.dart';
export 'schema/broadcasts_record.dart';
export 'schema/broadcast_messages_record.dart';
export 'schema/chats_record.dart';
export 'schema/chat_messages_record.dart';
export 'schema/automated_messages_record.dart';
export 'schema/incidents_record.dart';
export 'schema/security_providers_record.dart';
export 'schema/security_guards_record.dart';
export 'schema/panic_button_alert_record.dart';
export 'schema/educational_institution_record.dart';
export 'schema/letify_chatbot_chats_record.dart';
export 'schema/chatbot_messsages_record.dart';
export 'schema/ticket_lodging_record.dart';
export 'schema/screening_builder_question_record.dart';
export 'schema/screening_builder_record.dart';
export 'schema/screening_builder_answers_record.dart';
export 'schema/contract_builder_record.dart';
export 'schema/contract_builder_main_clause_record.dart';
export 'schema/contract_builder_sub_clause_record.dart';

/// Functions to query PortfolioRecords (as a Stream and as a Future).
Future<int> queryPortfolioRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PortfolioRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PortfolioRecord>> queryPortfolioRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PortfolioRecord.collection,
      PortfolioRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PortfolioRecord>> queryPortfolioRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PortfolioRecord.collection,
      PortfolioRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<PortfolioRecord>> queryPortfolioRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, PortfolioRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      PortfolioRecord.collection,
      PortfolioRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<PortfolioRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query PropertyRecords (as a Stream and as a Future).
Future<int> queryPropertyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PropertyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PropertyRecord>> queryPropertyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PropertyRecord.collection,
      PropertyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PropertyRecord>> queryPropertyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PropertyRecord.collection,
      PropertyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<PropertyRecord>> queryPropertyRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, PropertyRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      PropertyRecord.collection,
      PropertyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<PropertyRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query RoomRecords (as a Stream and as a Future).
Future<int> queryRoomRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      RoomRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<RoomRecord>> queryRoomRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      RoomRecord.collection,
      RoomRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<RoomRecord>> queryRoomRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      RoomRecord.collection,
      RoomRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<RoomRecord>> queryRoomRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, RoomRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      RoomRecord.collection,
      RoomRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<RoomRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query StudentRecords (as a Stream and as a Future).
Future<int> queryStudentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      StudentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<StudentRecord>> queryStudentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      StudentRecord.collection,
      StudentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<StudentRecord>> queryStudentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      StudentRecord.collection,
      StudentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<StudentRecord>> queryStudentRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, StudentRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      StudentRecord.collection,
      StudentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<StudentRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query LandlordRecords (as a Stream and as a Future).
Future<int> queryLandlordRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LandlordRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LandlordRecord>> queryLandlordRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LandlordRecord.collection,
      LandlordRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LandlordRecord>> queryLandlordRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LandlordRecord.collection,
      LandlordRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<LandlordRecord>> queryLandlordRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, LandlordRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      LandlordRecord.collection,
      LandlordRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<LandlordRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query AgencyRecords (as a Stream and as a Future).
Future<int> queryAgencyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AgencyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AgencyRecord>> queryAgencyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AgencyRecord.collection,
      AgencyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AgencyRecord>> queryAgencyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AgencyRecord.collection,
      AgencyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<AgencyRecord>> queryAgencyRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, AgencyRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      AgencyRecord.collection,
      AgencyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<AgencyRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query UserRecords (as a Stream and as a Future).
Future<int> queryUserRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserRecord>> queryUserRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserRecord>> queryUserRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<UserRecord>> queryUserRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, UserRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<UserRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ContractRecords (as a Stream and as a Future).
Future<int> queryContractRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContractRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContractRecord>> queryContractRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ContractRecord.collection,
      ContractRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ContractRecord>> queryContractRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ContractRecord.collection,
      ContractRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ContractRecord>> queryContractRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ContractRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ContractRecord.collection,
      ContractRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ContractRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ContractPathsRecords (as a Stream and as a Future).
Future<int> queryContractPathsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContractPathsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContractPathsRecord>> queryContractPathsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ContractPathsRecord.collection,
      ContractPathsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ContractPathsRecord>> queryContractPathsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ContractPathsRecord.collection,
      ContractPathsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ContractPathsRecord>> queryContractPathsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ContractPathsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ContractPathsRecord.collection,
      ContractPathsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ContractPathsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query TenantInfoRecords (as a Stream and as a Future).
Future<int> queryTenantInfoRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TenantInfoRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TenantInfoRecord>> queryTenantInfoRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TenantInfoRecord.collection(parent),
      TenantInfoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TenantInfoRecord>> queryTenantInfoRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TenantInfoRecord.collection(parent),
      TenantInfoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<TenantInfoRecord>> queryTenantInfoRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, TenantInfoRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      TenantInfoRecord.collection(parent),
      TenantInfoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<TenantInfoRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query TipOffsRecords (as a Stream and as a Future).
Future<int> queryTipOffsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TipOffsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TipOffsRecord>> queryTipOffsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TipOffsRecord.collection,
      TipOffsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TipOffsRecord>> queryTipOffsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TipOffsRecord.collection,
      TipOffsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<TipOffsRecord>> queryTipOffsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, TipOffsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      TipOffsRecord.collection,
      TipOffsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<TipOffsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query InfoBoardRecords (as a Stream and as a Future).
Future<int> queryInfoBoardRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      InfoBoardRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<InfoBoardRecord>> queryInfoBoardRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      InfoBoardRecord.collection,
      InfoBoardRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<InfoBoardRecord>> queryInfoBoardRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      InfoBoardRecord.collection,
      InfoBoardRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<InfoBoardRecord>> queryInfoBoardRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, InfoBoardRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      InfoBoardRecord.collection,
      InfoBoardRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<InfoBoardRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ScreeningInfoRecords (as a Stream and as a Future).
Future<int> queryScreeningInfoRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ScreeningInfoRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ScreeningInfoRecord>> queryScreeningInfoRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ScreeningInfoRecord.collection,
      ScreeningInfoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ScreeningInfoRecord>> queryScreeningInfoRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ScreeningInfoRecord.collection,
      ScreeningInfoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ScreeningInfoRecord>> queryScreeningInfoRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ScreeningInfoRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ScreeningInfoRecord.collection,
      ScreeningInfoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ScreeningInfoRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query AnalyticsRecords (as a Stream and as a Future).
Future<int> queryAnalyticsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AnalyticsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AnalyticsRecord>> queryAnalyticsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AnalyticsRecord.collection,
      AnalyticsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AnalyticsRecord>> queryAnalyticsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AnalyticsRecord.collection,
      AnalyticsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<AnalyticsRecord>> queryAnalyticsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, AnalyticsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      AnalyticsRecord.collection,
      AnalyticsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<AnalyticsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query AnnouncementsRecords (as a Stream and as a Future).
Future<int> queryAnnouncementsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AnnouncementsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AnnouncementsRecord>> queryAnnouncementsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AnnouncementsRecord.collection,
      AnnouncementsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AnnouncementsRecord>> queryAnnouncementsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AnnouncementsRecord.collection,
      AnnouncementsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<AnnouncementsRecord>> queryAnnouncementsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, AnnouncementsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      AnnouncementsRecord.collection,
      AnnouncementsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<AnnouncementsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ComplaintsRecords (as a Stream and as a Future).
Future<int> queryComplaintsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ComplaintsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ComplaintsRecord>> queryComplaintsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ComplaintsRecord.collection,
      ComplaintsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ComplaintsRecord>> queryComplaintsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ComplaintsRecord.collection,
      ComplaintsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ComplaintsRecord>> queryComplaintsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ComplaintsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ComplaintsRecord.collection,
      ComplaintsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ComplaintsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query PrelinkedTenantsRecords (as a Stream and as a Future).
Future<int> queryPrelinkedTenantsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PrelinkedTenantsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PrelinkedTenantsRecord>> queryPrelinkedTenantsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PrelinkedTenantsRecord.collection,
      PrelinkedTenantsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PrelinkedTenantsRecord>> queryPrelinkedTenantsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PrelinkedTenantsRecord.collection,
      PrelinkedTenantsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<PrelinkedTenantsRecord>>
    queryPrelinkedTenantsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, PrelinkedTenantsRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          PrelinkedTenantsRecord.collection,
          PrelinkedTenantsRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<PrelinkedTenantsRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query DeletedAccountsRecords (as a Stream and as a Future).
Future<int> queryDeletedAccountsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DeletedAccountsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DeletedAccountsRecord>> queryDeletedAccountsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DeletedAccountsRecord.collection,
      DeletedAccountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DeletedAccountsRecord>> queryDeletedAccountsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DeletedAccountsRecord.collection,
      DeletedAccountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<DeletedAccountsRecord>> queryDeletedAccountsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, DeletedAccountsRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      DeletedAccountsRecord.collection,
      DeletedAccountsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<DeletedAccountsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query AgentRecords (as a Stream and as a Future).
Future<int> queryAgentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AgentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AgentRecord>> queryAgentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AgentRecord.collection,
      AgentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AgentRecord>> queryAgentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AgentRecord.collection,
      AgentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<AgentRecord>> queryAgentRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, AgentRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      AgentRecord.collection,
      AgentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<AgentRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ArchivedTenantsRecords (as a Stream and as a Future).
Future<int> queryArchivedTenantsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ArchivedTenantsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ArchivedTenantsRecord>> queryArchivedTenantsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ArchivedTenantsRecord.collection,
      ArchivedTenantsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ArchivedTenantsRecord>> queryArchivedTenantsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ArchivedTenantsRecord.collection,
      ArchivedTenantsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ArchivedTenantsRecord>> queryArchivedTenantsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ArchivedTenantsRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ArchivedTenantsRecord.collection,
      ArchivedTenantsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ArchivedTenantsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query BroadcastsRecords (as a Stream and as a Future).
Future<int> queryBroadcastsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BroadcastsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BroadcastsRecord>> queryBroadcastsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BroadcastsRecord.collection,
      BroadcastsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BroadcastsRecord>> queryBroadcastsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BroadcastsRecord.collection,
      BroadcastsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<BroadcastsRecord>> queryBroadcastsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, BroadcastsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      BroadcastsRecord.collection,
      BroadcastsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<BroadcastsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query BroadcastMessagesRecords (as a Stream and as a Future).
Future<int> queryBroadcastMessagesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BroadcastMessagesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BroadcastMessagesRecord>> queryBroadcastMessagesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BroadcastMessagesRecord.collection(parent),
      BroadcastMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BroadcastMessagesRecord>> queryBroadcastMessagesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BroadcastMessagesRecord.collection(parent),
      BroadcastMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<BroadcastMessagesRecord>>
    queryBroadcastMessagesRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, BroadcastMessagesRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          BroadcastMessagesRecord.collection(parent),
          BroadcastMessagesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<BroadcastMessagesRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query ChatsRecords (as a Stream and as a Future).
Future<int> queryChatsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChatsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChatsRecord>> queryChatsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChatsRecord.collection,
      ChatsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChatsRecord>> queryChatsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChatsRecord.collection,
      ChatsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ChatsRecord>> queryChatsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ChatsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ChatsRecord.collection,
      ChatsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ChatsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ChatMessagesRecords (as a Stream and as a Future).
Future<int> queryChatMessagesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChatMessagesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChatMessagesRecord>> queryChatMessagesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChatMessagesRecord.collection,
      ChatMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChatMessagesRecord>> queryChatMessagesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChatMessagesRecord.collection,
      ChatMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ChatMessagesRecord>> queryChatMessagesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ChatMessagesRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ChatMessagesRecord.collection,
      ChatMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ChatMessagesRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query AutomatedMessagesRecords (as a Stream and as a Future).
Future<int> queryAutomatedMessagesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AutomatedMessagesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AutomatedMessagesRecord>> queryAutomatedMessagesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AutomatedMessagesRecord.collection,
      AutomatedMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AutomatedMessagesRecord>> queryAutomatedMessagesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AutomatedMessagesRecord.collection,
      AutomatedMessagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<AutomatedMessagesRecord>>
    queryAutomatedMessagesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, AutomatedMessagesRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          AutomatedMessagesRecord.collection,
          AutomatedMessagesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<AutomatedMessagesRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query IncidentsRecords (as a Stream and as a Future).
Future<int> queryIncidentsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IncidentsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IncidentsRecord>> queryIncidentsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IncidentsRecord.collection,
      IncidentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IncidentsRecord>> queryIncidentsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IncidentsRecord.collection,
      IncidentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<IncidentsRecord>> queryIncidentsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, IncidentsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      IncidentsRecord.collection,
      IncidentsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<IncidentsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query SecurityProvidersRecords (as a Stream and as a Future).
Future<int> querySecurityProvidersRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SecurityProvidersRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SecurityProvidersRecord>> querySecurityProvidersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SecurityProvidersRecord.collection,
      SecurityProvidersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SecurityProvidersRecord>> querySecurityProvidersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SecurityProvidersRecord.collection,
      SecurityProvidersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<SecurityProvidersRecord>>
    querySecurityProvidersRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, SecurityProvidersRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          SecurityProvidersRecord.collection,
          SecurityProvidersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<SecurityProvidersRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query SecurityGuardsRecords (as a Stream and as a Future).
Future<int> querySecurityGuardsRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SecurityGuardsRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SecurityGuardsRecord>> querySecurityGuardsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SecurityGuardsRecord.collection(parent),
      SecurityGuardsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SecurityGuardsRecord>> querySecurityGuardsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SecurityGuardsRecord.collection(parent),
      SecurityGuardsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<SecurityGuardsRecord>> querySecurityGuardsRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, SecurityGuardsRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      SecurityGuardsRecord.collection(parent),
      SecurityGuardsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<SecurityGuardsRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query PanicButtonAlertRecords (as a Stream and as a Future).
Future<int> queryPanicButtonAlertRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PanicButtonAlertRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PanicButtonAlertRecord>> queryPanicButtonAlertRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PanicButtonAlertRecord.collection,
      PanicButtonAlertRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PanicButtonAlertRecord>> queryPanicButtonAlertRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PanicButtonAlertRecord.collection,
      PanicButtonAlertRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<PanicButtonAlertRecord>>
    queryPanicButtonAlertRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, PanicButtonAlertRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          PanicButtonAlertRecord.collection,
          PanicButtonAlertRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<PanicButtonAlertRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query EducationalInstitutionRecords (as a Stream and as a Future).
Future<int> queryEducationalInstitutionRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EducationalInstitutionRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EducationalInstitutionRecord>> queryEducationalInstitutionRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EducationalInstitutionRecord.collection,
      EducationalInstitutionRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EducationalInstitutionRecord>>
    queryEducationalInstitutionRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          EducationalInstitutionRecord.collection,
          EducationalInstitutionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );
Future<FFFirestorePage<EducationalInstitutionRecord>>
    queryEducationalInstitutionRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, EducationalInstitutionRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          EducationalInstitutionRecord.collection,
          EducationalInstitutionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription = (page.dataStream)
                ?.listen((List<EducationalInstitutionRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query LetifyChatbotChatsRecords (as a Stream and as a Future).
Future<int> queryLetifyChatbotChatsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LetifyChatbotChatsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LetifyChatbotChatsRecord>> queryLetifyChatbotChatsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LetifyChatbotChatsRecord.collection,
      LetifyChatbotChatsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LetifyChatbotChatsRecord>> queryLetifyChatbotChatsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LetifyChatbotChatsRecord.collection,
      LetifyChatbotChatsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<LetifyChatbotChatsRecord>>
    queryLetifyChatbotChatsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, LetifyChatbotChatsRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          LetifyChatbotChatsRecord.collection,
          LetifyChatbotChatsRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription = (page.dataStream)
                ?.listen((List<LetifyChatbotChatsRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query ChatbotMesssagesRecords (as a Stream and as a Future).
Future<int> queryChatbotMesssagesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChatbotMesssagesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChatbotMesssagesRecord>> queryChatbotMesssagesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChatbotMesssagesRecord.collection(parent),
      ChatbotMesssagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChatbotMesssagesRecord>> queryChatbotMesssagesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChatbotMesssagesRecord.collection(parent),
      ChatbotMesssagesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ChatbotMesssagesRecord>>
    queryChatbotMesssagesRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ChatbotMesssagesRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          ChatbotMesssagesRecord.collection(parent),
          ChatbotMesssagesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<ChatbotMesssagesRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query TicketLodgingRecords (as a Stream and as a Future).
Future<int> queryTicketLodgingRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TicketLodgingRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TicketLodgingRecord>> queryTicketLodgingRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TicketLodgingRecord.collection,
      TicketLodgingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TicketLodgingRecord>> queryTicketLodgingRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TicketLodgingRecord.collection,
      TicketLodgingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<TicketLodgingRecord>> queryTicketLodgingRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, TicketLodgingRecord> controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      TicketLodgingRecord.collection,
      TicketLodgingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<TicketLodgingRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ScreeningBuilderQuestionRecords (as a Stream and as a Future).
Future<int> queryScreeningBuilderQuestionRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ScreeningBuilderQuestionRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ScreeningBuilderQuestionRecord>>
    queryScreeningBuilderQuestionRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          ScreeningBuilderQuestionRecord.collection,
          ScreeningBuilderQuestionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<ScreeningBuilderQuestionRecord>>
    queryScreeningBuilderQuestionRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ScreeningBuilderQuestionRecord.collection,
          ScreeningBuilderQuestionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );
Future<FFFirestorePage<ScreeningBuilderQuestionRecord>>
    queryScreeningBuilderQuestionRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ScreeningBuilderQuestionRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          ScreeningBuilderQuestionRecord.collection,
          ScreeningBuilderQuestionRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription = (page.dataStream)
                ?.listen((List<ScreeningBuilderQuestionRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query ScreeningBuilderRecords (as a Stream and as a Future).
Future<int> queryScreeningBuilderRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ScreeningBuilderRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ScreeningBuilderRecord>> queryScreeningBuilderRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ScreeningBuilderRecord.collection,
      ScreeningBuilderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ScreeningBuilderRecord>> queryScreeningBuilderRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ScreeningBuilderRecord.collection,
      ScreeningBuilderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ScreeningBuilderRecord>>
    queryScreeningBuilderRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ScreeningBuilderRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          ScreeningBuilderRecord.collection,
          ScreeningBuilderRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription =
                (page.dataStream)?.listen((List<ScreeningBuilderRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query ScreeningBuilderAnswersRecords (as a Stream and as a Future).
Future<int> queryScreeningBuilderAnswersRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ScreeningBuilderAnswersRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ScreeningBuilderAnswersRecord>> queryScreeningBuilderAnswersRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ScreeningBuilderAnswersRecord.collection(parent),
      ScreeningBuilderAnswersRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ScreeningBuilderAnswersRecord>>
    queryScreeningBuilderAnswersRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ScreeningBuilderAnswersRecord.collection(parent),
          ScreeningBuilderAnswersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );
Future<FFFirestorePage<ScreeningBuilderAnswersRecord>>
    queryScreeningBuilderAnswersRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ScreeningBuilderAnswersRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          ScreeningBuilderAnswersRecord.collection(parent),
          ScreeningBuilderAnswersRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription = (page.dataStream)
                ?.listen((List<ScreeningBuilderAnswersRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query ContractBuilderRecords (as a Stream and as a Future).
Future<int> queryContractBuilderRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContractBuilderRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContractBuilderRecord>> queryContractBuilderRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ContractBuilderRecord.collection,
      ContractBuilderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ContractBuilderRecord>> queryContractBuilderRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ContractBuilderRecord.collection,
      ContractBuilderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );
Future<FFFirestorePage<ContractBuilderRecord>> queryContractBuilderRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ContractBuilderRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
    queryCollectionPage(
      ContractBuilderRecord.collection,
      ContractBuilderRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    ).then((page) {
      controller.appendPage(
        page.data,
        page.nextPageMarker,
      );
      if (isStream) {
        final streamSubscription =
            (page.dataStream)?.listen((List<ContractBuilderRecord> data) {
          data.forEach((item) {
            final itemIndexes = controller.itemList!
                .asMap()
                .map((k, v) => MapEntry(v.reference.id, k));
            final index = itemIndexes[item.reference.id];
            final items = controller.itemList!;
            if (index != null) {
              items.replaceRange(index, index + 1, [item]);
              controller.itemList = {
                for (var item in items) item.reference: item
              }.values.toList();
            }
          });
        });
        streamSubscriptions?.add(streamSubscription);
      }
      return page;
    });

/// Functions to query ContractBuilderMainClauseRecords (as a Stream and as a Future).
Future<int> queryContractBuilderMainClauseRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContractBuilderMainClauseRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContractBuilderMainClauseRecord>>
    queryContractBuilderMainClauseRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          ContractBuilderMainClauseRecord.collection,
          ContractBuilderMainClauseRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<ContractBuilderMainClauseRecord>>
    queryContractBuilderMainClauseRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ContractBuilderMainClauseRecord.collection,
          ContractBuilderMainClauseRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );
Future<FFFirestorePage<ContractBuilderMainClauseRecord>>
    queryContractBuilderMainClauseRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ContractBuilderMainClauseRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          ContractBuilderMainClauseRecord.collection,
          ContractBuilderMainClauseRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription = (page.dataStream)
                ?.listen((List<ContractBuilderMainClauseRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

/// Functions to query ContractBuilderSubClauseRecords (as a Stream and as a Future).
Future<int> queryContractBuilderSubClauseRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ContractBuilderSubClauseRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ContractBuilderSubClauseRecord>>
    queryContractBuilderSubClauseRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          ContractBuilderSubClauseRecord.collection(parent),
          ContractBuilderSubClauseRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<ContractBuilderSubClauseRecord>>
    queryContractBuilderSubClauseRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          ContractBuilderSubClauseRecord.collection(parent),
          ContractBuilderSubClauseRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );
Future<FFFirestorePage<ContractBuilderSubClauseRecord>>
    queryContractBuilderSubClauseRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
  required PagingController<DocumentSnapshot?, ContractBuilderSubClauseRecord>
      controller,
  List<StreamSubscription?>? streamSubscriptions,
}) =>
        queryCollectionPage(
          ContractBuilderSubClauseRecord.collection(parent),
          ContractBuilderSubClauseRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        ).then((page) {
          controller.appendPage(
            page.data,
            page.nextPageMarker,
          );
          if (isStream) {
            final streamSubscription = (page.dataStream)
                ?.listen((List<ContractBuilderSubClauseRecord> data) {
              data.forEach((item) {
                final itemIndexes = controller.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = controller.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  controller.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
            });
            streamSubscriptions?.add(streamSubscription);
          }
          return page;
        });

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UserRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UserRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUserRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument = UserRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUserRecordData(email: email));
}
