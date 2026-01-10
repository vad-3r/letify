import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? calculateTotalRent(
  DateTime startDate,
  DateTime endDate,
  String monthlyRent,
) {
  int monthsDiff = endDate.month - startDate.month;
  int yearsDiff = endDate.year - startDate.year;

  int contractDur = (yearsDiff * 12) + monthsDiff;
  if (monthsDiff == 0 && yearsDiff == 0) {
    contractDur = 1;
  } else {
    contractDur = contractDur + 1;
  }

  double rent = double.parse(monthlyRent);
  double totalRent = contractDur * rent;
  String total = totalRent.toString();
  return total;
}

double? estimateTextWidthNoti(String? text) {
  if (text == null || text.isEmpty) return null;

  // For numbers only - digits are pretty uniform in width
  double baseWidth = text.length * 7.5;
  double padding = 16.0;

  return baseWidth + padding;
}

String? generateLandlordUID() {
  String prefix = '20242';

  int randomNumber = math.Random().nextInt(9000) + 1000;
  String landlordID = '$prefix$randomNumber';
  return landlordID;
}

String? generateStudentUID() {
  String prefix = '20242';

  int randomNumber = math.Random().nextInt(9000) + 1000;
  String landlordID = '$prefix$randomNumber';
  return landlordID;
}

String? listItem(List<String>? items) {
  String results = '';
  if (items != null) {
    for (String things in items) {
      results += '$things\n';
    }
    return results;
  } else {
    return '';
  }
}

String? newRoom(String? roomType) {
  //String prefix = '20242';
  if (roomType == 'Single') {
    String prefix = 'SINGLE';
    int randomNumber = math.Random().nextInt(9000) + 1000;
    String roomID = '$prefix$randomNumber';
    return roomID;
  } else if (roomType == 'Sharing') {
    String prefix = 'SHARE';
    int randomNumber = math.Random().nextInt(9000) + 1000;
    String roomID = '$prefix$randomNumber';
    return roomID;
  } else if (roomType == 'Bachlor') {
    String prefix = 'BACH';
    int randomNumber = math.Random().nextInt(9000) + 1000;
    String roomID = '$prefix$randomNumber';
    return roomID;
  }
}

List<String> electricityRules(
  String monthRentPercentage,
  String elecValueRent,
  String landlordElecAmount,
  String prepaidMeterAmount,
) {
  String option1 =
      'The tenant is fully responsible to buy his/her own electricity.';
  String option2 = 'Electricity is included in your monthly rent.';
  String option3 =
      'The monthly rent includes electricity to the value of $monthRentPercentage% of the monthly rent.';
  String option4 =
      'the monthly rent includes electricity to the value of R$elecValueRent of the monthly rent.';
  String option5 =
      'When the electricity is finished, the tenant must notify the landlord.';
  String option6 =
      'When the electricity is finished, the landlord will assist by buying the same amount as the students bought.';
  String option7 =
      'When the electricity is finished, the landlord will buy extra electricity to the value of R$landlordElecAmount.';
  String option8 =
      'The house has a prepaid meter that supplies electricity to the property. If this meter runs out of electricity the whole house will be out of electricity.';
  String option9 =
      'The tenant has a prepaid meter fitted in their room. The tenant is responsible to buy his/her own electricity for their meter.';
  String option10 =
      'The tenant has a prepaid meter fitted in their room. An electricity token amounting to R$prepaidMeterAmount will be provided every month.';

  return [
    option1,
    option2,
    option3,
    option4,
    option5,
    option6,
    option7,
    option8,
    option9,
    option10
  ];
}

double? calculateRent(
  int? totalGeneratedTenant,
  double? rentAmount,
) {
  int? intRent = rentAmount?.toInt();

  int total = totalGeneratedTenant! * intRent!;
  return total.toDouble();
}

int? convertStringToInt(String? str) {
  return int.parse(str!);
}

int? contractDuration(
  DateTime startDate,
  DateTime endDate,
) {
  int monthsDiff = endDate.month - startDate.month;
  int yearsDiff = endDate.year - startDate.year;

  int contractDur = (yearsDiff * 12) + monthsDiff;
  if (monthsDiff == 0 && yearsDiff == 0) {
    return 1;
  } else {
    return contractDur + 1;
  }
}

String? monthName(DateTime? date) {
  if (date == null) {
    return null;
  }
  String month = DateFormat('MMMM').format(date);
  return month[0].toUpperCase() + month.substring(1).toLowerCase();
}

String? capitalizeWord(String? word) {
  return word![0].toUpperCase() + word.substring(1).toLowerCase();
}

bool? booleanFalse() {
  return false;
}

String? nameConcat(
  String? name,
  String? surname,
) {
  String concat = name! + ' ' + surname!;
  return concat;
}

String? nameConcatCopy(
  String? name,
  String? surname,
  String? email,
) {
  String concat = name! + ' ' + surname! + ' ' + email!;
  return concat;
}

int? indexIndentForName(int? index) {
  return index! + 1;
}

bool? nsfasNPlusRule(
  String? courseDuration,
  String? yearFirstRegistered,
  String? currentYearOfStudy,
  String? yearFirstRecievedNsfas,
  String? currentYear,
) {
  int maxYearsFunded = int.parse(courseDuration!) + 1;

  int numOfYearsSinceFirstRegistration =
      int.parse(currentYear!) - int.parse(yearFirstRegistered!);

  int numOfYearsRecievingNSFAS =
      int.parse(currentYear) - int.parse(yearFirstRecievedNsfas!);

  if (numOfYearsRecievingNSFAS > maxYearsFunded) {
    return true;
  } else if (numOfYearsSinceFirstRegistration > maxYearsFunded) {
    return true;
  } else {
    return false;
  }
}

String? nsfasNPlusRuleString(
  String? courseDuration,
  String? yearFirstRegistered,
  String? currentYearOfStudy,
  String? yearFirstRecievedNsfas,
  String? currentYear,
  String? appeal,
  String? modulesPassed,
) {
  int maxYearsFunded = int.parse(courseDuration!) + 1;

  int numOfYearsSinceFirstRegistration =
      int.parse(currentYear!) - int.parse(yearFirstRegistered!);

  int numOfYearsRecievingNSFAS =
      int.parse(currentYear) - int.parse(yearFirstRecievedNsfas!);

  if (numOfYearsRecievingNSFAS > maxYearsFunded) {
    return "Exceeds NSFAS N+ rule.";
  } else if (numOfYearsSinceFirstRegistration > maxYearsFunded) {
    return "Exceeds course duration plus additional year.";
  } else if (appeal == "Yes") {
    return "Student has appealed before. Check ADS.";
  } else if (modulesPassed == "No") {
    return "Student did not pass at least 70% of their modules last year. Check ADS.";
  } else {
    return "Student is not high risk. Check ADS to confirm.";
  }
}

bool? nsfasNPlusRuleBoolean(
  String? courseDuration,
  String? yearFirstRegistered,
  String? currentYearOfStudy,
  String? yearFirstRecievedNsfas,
  String? currentYear,
  String? appeal,
  String? modulesPassed,
) {
  int maxYearsFunded = int.parse(courseDuration!) + 1;

  int numOfYearsSinceFirstRegistration =
      int.parse(currentYear!) - int.parse(yearFirstRegistered!);

  int numOfYearsRecievingNSFAS =
      int.parse(currentYear) - int.parse(yearFirstRecievedNsfas!);

  if (numOfYearsRecievingNSFAS > maxYearsFunded) {
    return true;
  } else if (numOfYearsSinceFirstRegistration > maxYearsFunded) {
    return true;
  } else if (appeal == "Yes") {
    return true;
  } else if (modulesPassed == "No") {
    return true;
  } else {
    return false;
  }
}

String? otherHighRiskCriteria(
  String? appealdBefore,
  String? modulesPassed,
) {
  if (appealdBefore == "Yes") {
    return "Student has appealed before. Check ADS.";
  } else if (modulesPassed == "No") {
    return "Student did not passed 70 percent of their modules in the previous year. Check ADS.";
  }
}

double? decimalOccupied(
  int? available,
  int? vacant,
) {
  if (available == 0 && vacant == 0) {
    return 0;
  } else {
    int occupied = available! - vacant!;
    double perc = occupied / available;
    perc = double.parse(perc.toStringAsFixed(2));
    return perc;
  }
}

String? percentageOccupied(
  int? available,
  int? vacant,
) {
  if (available == 0 && vacant == 0) {
    return "";
  } else {
    int occupied = available! - vacant!;
    double percs = (occupied / available) * 100;
    int perc = percs.toInt();
    return perc.toString() + '%\nFull';
  }
}

double? totalAvailableUnits(
  double? totalUnits,
  double? occupiedUnits,
) {
  double results = totalUnits! - occupiedUnits!;
  return results;
}

int? stringLength(String? theString) {
  return theString!.length;
}

String? prelinkEmail(
  String? propertyName,
  String? roomNumber,
) {
  String message = 'Dear Tenant,\n' +
      'You have been prelinked to a property and assigned a room. To complete your registration and be fully linked to your room, please create your account.\n\n' +
      'Note that you have been prelinked to the following room:\n Property: $propertyName, Room: $roomNumber.\n\nTo complete your registration, click the link below and sign up by following the instructions on screen:\nhttps://letify.flutterflow.app/\n\nIf there was a mistake or need assistance, please contact this number: +27 67 160 9320\n\nBest regards,\n\nLetify Team.';
  return message;
}

int? differenceINT(
  int? num1,
  int? num2,
) {
  return num1! - num2!;
}

String? removeAsteriks(String? text) {
  return text!.replaceAll('*', '');
}

String? percentageOccupiedCopy(
  int? available,
  int? vacant,
) {
  if (available == 0 && vacant == 0) {
    return "";
  } else {
    int occupied = available! - vacant!;
    double percs = (occupied / available) * 100;
    int perc = percs.toInt();
    return perc.toString() + '%';
  }
}

double? addition(
  int? num1,
  int? num2,
) {
  double num3 = num1!.toDouble() + num2!.toDouble();
  return num3;
}

List<String>? permissions(
  bool? createContract,
  bool? deleteContract,
  bool? linkContract,
  bool? delinkContract,
  bool? linkTenant,
  bool? delinkTenant,
  bool? deleteUnits,
  bool? createProperties,
  bool? deleteProperties,
  bool? overrideContract,
  bool? messageOwners,
  bool? createGroups,
) {
  List<String> selectedPermissions = [];

  if (createContract == true) {
    selectedPermissions.add("Create Contracts");
  }
  if (deleteContract == true) {
    selectedPermissions.add("Delete Contracts");
  }
  if (linkContract == true) {
    selectedPermissions.add("Link Contracts");
  }
  if (delinkContract == true) {
    selectedPermissions.add("De-Link Contracts");
  }
  if (linkTenant == true) {
    selectedPermissions.add("Link Tenants");
  }
  if (delinkTenant == true) {
    selectedPermissions.add("De-Link Tenants");
  }
  if (deleteUnits == true) {
    selectedPermissions.add("Delete Units");
  }
  if (createProperties == true) {
    selectedPermissions.add("Create Properties");
  }
  if (deleteProperties == true) {
    selectedPermissions.add("Delete Properties");
  }
  if (overrideContract == true) {
    selectedPermissions.add("Override Contracts");
  }
  if (messageOwners == true) {
    selectedPermissions.add("Message Owners");
  }
  if (createGroups == true) {
    selectedPermissions.add("Create Groups");
  }
  return selectedPermissions;
}

List<String>? permissionsOwners(
  bool? linkTenant,
  bool? delinkTenant,
  bool? deleteUnits,
  bool? createProperties,
  bool? deleteProperties,
  bool? viewGroup,
  bool? replyGroup,
) {
  List<String> selectedPermissions = [];

  if (linkTenant == true) {
    selectedPermissions.add("Link Tenants");
  }
  if (delinkTenant == true) {
    selectedPermissions.add("De-Link Tenants");
  }
  if (deleteUnits == true) {
    selectedPermissions.add("Delete Units");
  }
  if (createProperties == true) {
    selectedPermissions.add("Create Properties");
  }
  if (deleteProperties == true) {
    selectedPermissions.add("Delete Properties");
  }
  if (viewGroup == true) {
    selectedPermissions.add("View Groups");
  }
  if (replyGroup == true) {
    selectedPermissions.add("Reply Groups");
  }
  return selectedPermissions;
}

bool? lstContainsPermission(
  List<String>? lstPermissions,
  String? permission,
) {
  if (lstPermissions!.contains(permission) == true) {
    return true;
  } else {
    return false;
  }
}

String? aString(String? word) {
  return word;
}

String? replaceStar(String? input) {
  List<String> parts = input!.split('@');
  if (parts.length != 2) return input; // Return unchanged if invalid format

  String username = parts[0];
  String domain = parts[1];

  // Show the first 4 characters, hide the rest with asterisks
  String visiblePart =
      username.length > 4 ? username.substring(0, 4) : username;
  String hiddenPart = '*' * (username.length - visiblePart.length);

  return '$visiblePart$hiddenPart@$domain';
}

String? convertToString(String? image) {
  return image.toString();
}

String? emptyString() {
  return "";
}

String extractTextFromDate(String input) {
  final datePattern = RegExp(
    r'[A-Za-z]{3}\s\d{1,2},\s\d{4}', // Matches "Apr 25, 2025"
    caseSensitive: false,
  );

  // Find the position where the date starts
  final match = datePattern.firstMatch(input)!;
  final dateStartIndex = match.start;

  // Extract everything before the date and trim whitespace
  return input.substring(0, dateStartIndex).trim();
}

String extractDateFromText(String input) {
  final datePattern = RegExp(
    r'[A-Za-z]{3}\s\d{1,2},\s\d{4}', // Matches "Apr 25, 2025"
    caseSensitive: false,
  );

  // Extract the first (and only) match
  return datePattern.firstMatch(input)!.group(0)!;
}

String? sendEmailText(
  String text,
  String sender,
  String propertyName,
) {
  String greetings = "To Whom It May Concern, \n$text";
  String out = "\nregards,\n$sender from $propertyName";
  return greetings + out;
}

String? relocateProperty(
  String? property,
  String? reason,
) {
  return "Tenant has relocated to $property, for this reason: $reason";
}

int? userRefCount(
  List<DocumentReference> usersList,
  DocumentReference userRef,
) {
  //if (userRef == null || usersList == null) return 0;

  int count = 0;
  for (int i = 0; i < usersList.length; i++) {
    if (usersList[i].path == userRef.path) {
      count++;
    }
  }
  return count;
}

DocumentReference? getOtherUserRef(
  List<DocumentReference>? userRefs,
  DocumentReference? currentUserRef,
) {
  if (userRefs == null || userRefs.length < 2 || currentUserRef == null) {
    return null;
  }

  if (userRefs[0].path == currentUserRef.path) {
    return userRefs[1];
  } else {
    return userRefs[0];
  }
}

List<DocumentReference>? getOtherUserRefs(
  List<DocumentReference>? userRefList,
  DocumentReference? currentUserRef,
) {
  if (userRefList == null || currentUserRef == null) {
    return null;
  }

  // Filter out the current user reference
  return userRefList.where((ref) => ref.path != currentUserRef.path).toList();
}

List<DocumentReference>? removeRefsMatching(
  List<DocumentReference>? people1,
  List<DocumentReference>? people,
) {
  people1!.removeWhere((person) => people!.contains(person));
  return people1;
}

String? mapsURL(LatLng? currentLocation) {
  if (currentLocation == null) return null;

  return 'https://www.google.com/maps/@${currentLocation.latitude},${currentLocation.longitude},9z?authuser=0&entry=ttu&g_ep=EgoyMDI1MDUyMS4wIKXMDSoASAFQAw%3D%3D';
}

double? estimateTextWidth(String? text) {
  return text!.length * 7.5 + 15 * 8;
}

String formatMessageDateTimeDetailed(DateTime messageDateTime) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(Duration(days: 1));
  final messageDate = DateTime(
      messageDateTime.year, messageDateTime.month, messageDateTime.day);

  if (messageDate.isAtSameMomentAs(today)) {
    // Today - show time
    return DateFormat('h:mm a').format(messageDateTime);
  } else if (messageDate.isAtSameMomentAs(yesterday)) {
    // Yesterday - show "Yesterday"
    return 'Yesterday';
  } else if (messageDate.year == now.year) {
    // This year - show month and day
    return DateFormat('MMM d').format(messageDateTime);
  } else {
    // Different year - show full date
    return DateFormat('MMM d, y').format(messageDateTime);
  }
}

double scaleWidth(double designWidth) {
  // 375 is the base width you're designing against (e.g., iPhone 11)
  double baseWidth = 375.0;
  // ignore: deprecated_member_use
  double screenWidth =
      MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;

  return (designWidth / baseWidth) * screenWidth;
}

List<BroadcastsRecord> filterDocsBySearch(
  List<BroadcastsRecord> docs,
  String searchField,
  String query,
) {
  if (query.trim().isEmpty) return docs;

  final lowerQuery = query.toLowerCase();

  return docs.where((docs) {
    final data = docs.snapshotData;
    final value = data[searchField];
    return value.toString().toLowerCase().contains(lowerQuery);
  }).toList();
}

List<TipOffsRecord> filterDocsBySearchTipOffs(
  List<TipOffsRecord> docs,
  String searchField,
  String query,
) {
  if (query.trim().isEmpty) return docs;

  final lowerQuery = query.toLowerCase();

  return docs.where((docs) {
    final data = docs.snapshotData;
    final value = data[searchField];
    return value.toString().toLowerCase().contains(lowerQuery);
  }).toList();
}

List<StudentRecord> filterDocsBySearchStudent(
  List<StudentRecord> docs,
  String searchField,
  String query,
) {
  if (query.trim().isEmpty) return docs;

  final lowerQuery = query.toLowerCase();

  return docs.where((docs) {
    final data = docs.snapshotData;
    final value = data[searchField];
    return value.toString().toLowerCase().contains(lowerQuery);
  }).toList();
}

List<UserRecord> filterDocsBySearchStudentUser(
  List<UserRecord> docs,
  String searchField,
  String query,
) {
  if (query.trim().isEmpty) return docs;

  final lowerQuery = query.toLowerCase();

  return docs.where((docs) {
    final data = docs.snapshotData;
    final value = data[searchField];
    return value.toString().toLowerCase().contains(lowerQuery);
  }).toList();
}

List<DocumentReference> currentUser(DocumentReference user) {
  List<DocumentReference> emptyList = [];
  emptyList.add(user);
  return emptyList;
}

double? toDouble(String? value) {
  return value != null ? double.tryParse(value) : null;
}
