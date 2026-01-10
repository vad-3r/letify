// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';

int contractDuration(DateTime startDate, DateTime endDate) {
  int monthsDiff = endDate.month - startDate.month;
  int yearsDiff = endDate.year - startDate.year;

  int contractDur = (yearsDiff * 12) + monthsDiff;
  if (monthsDiff == 0 && yearsDiff == 0) {
    return 1;
  } else {
    return contractDur + 1;
  }
}

Future<void> generateContractPDFCopy(
    String lessorName,
    String lessorID,
    String lessorStreetAddress,
    String lessorSuburb,
    String lessorCity,
    String lessorPostalCode,
    String lessorEmail,
    String lessorTel,
    String lesseeName,
    String lesseeID,
    String lesseeStreetAddress,
    String lesseeProvince,
    String lesseeCity,
    String lesseePostalCode,
    String lesseeEmail,
    String lesseeTel,
    String sponsorName,
    String sponsorID,
    String sponsorStreetAddress,
    String sponsorProvince,
    String sponsorCity,
    String sponsorPostalCode,
    String sponsorEmail,
    String sponsorTel,
    String nextOfKinName,
    String nextOfKinID,
    String nextOfKinStreetAddress,
    String nextOfKinProvince,
    String nextOfKinCity,
    String nextOfKinPostalCode,
    String nextOfKinEmail,
    String nextOfKinTel,
    String? topTen1,
    String? topTen2,
    String? topTen3,
    String? topTen4,
    String? topTen5,
    String? topTen6,
    String? topTen7,
    String? topTen8,
    String? topTen9,
    String? topTen10,
    String contractID,
    DateTime startDate,
    DateTime endDate,
    double monthlyRent,
    String electricityRules,
    String waterRules,
    String roomType,
    String landlordSignatureURL,
    String? signature1URL,
    String? signature2URL,
    String studentSignatureURL) async {
  final pdf = pw.Document();

  // Fetch the landlord's signature from Firebase
  final response = await http.get(Uri.parse(landlordSignatureURL));
  final image = pw.MemoryImage(response.bodyBytes);
  // Fetch the students's signature from Firebase
  final responses = await http.get(Uri.parse(studentSignatureURL));
  final studentImage = pw.MemoryImage(responses.bodyBytes);
  // Null-safe fetch for optional signature1
  pw.MemoryImage? signature1;
  if (signature1URL != null && signature1URL.isNotEmpty) {
    final response1 = await http.get(Uri.parse(signature1URL));
    signature1 = pw.MemoryImage(response1.bodyBytes);
  }

  // Null-safe fetch for optional signature2
  pw.MemoryImage? signature2;
  if (signature2URL != null && signature2URL.isNotEmpty) {
    final response2 = await http.get(Uri.parse(signature2URL));
    signature2 = pw.MemoryImage(response2.bodyBytes);
  }

  //Total Rent Calculation
  double totalRent = contractDuration(startDate, endDate) * monthlyRent;
  //Current dates
  DateTime currentDate = DateTime.now();
  //Months names
  String startMonthName =
      DateFormat('MMMM').format(startDate); // Get full month name (e.g., "May")
  String endMonthName = DateFormat('MMMM').format(endDate);
  String currentMonthName = DateFormat('MMMM').format(currentDate);

  pdf.addPage(
    pw.MultiPage(
      build: (pw.Context context) {
        return [
          // Centered header section
          pw.Center(
            child: pw.Column(
              children: [
                pw.Text('RENTAL CONTRACT BETWEEN',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 10),
                pw.Text('$lessorName (HENCEFORWARD THE LESSOR)',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 10),
                pw.Text('AND $lesseeName (HENCEFORWARD THE LESSEE)',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 24),
              ],
            ),
          ),
          // Lessor information
          pw.Text('Lessor Information',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.Text('Name: $lessorName'),
          pw.Text('Company/Lessor ID: $lessorID'),
          pw.Text('Tel Number: $lessorTel'),
          pw.Text('Email: $lessorEmail'),
          pw.Text(
              'Address: $lessorStreetAddress, $lessorSuburb, $lessorCity, $lessorPostalCode'),
          pw.SizedBox(height: 20),

          //Lessee Information
          pw.Text('Lessee Information',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.Text('Name: $lesseeName'),
          pw.Text('Sponsor ID: $lesseeID'),
          pw.Text('Tel Number: $lesseeTel'),
          pw.Text('Email: $sponsorEmail'),
          pw.Text(
              'Address: $lesseeStreetAddress, $lesseeProvince, $lesseeCity, $lesseePostalCode'),
          pw.SizedBox(height: 20),

          //Sponsor Information
          pw.Text('Sponsor Information',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.Text('Name: $sponsorName'),
          pw.Text('Sponsor ID: $sponsorID'),
          pw.Text('Tel Number: $sponsorTel'),
          pw.Text('Email: $sponsorEmail'),
          pw.Text(
              'Address: $sponsorStreetAddress, $sponsorProvince, $sponsorCity, $sponsorPostalCode'),
          pw.SizedBox(height: 20),

          //Next of kin Information
          pw.Text('Next of kin Information',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.Text('Name: $nextOfKinName'),
          pw.Text('Sponsor ID: $nextOfKinID'),
          pw.Text('Tel Number: $nextOfKinTel'),
          pw.Text('Email: $nextOfKinEmail'),
          pw.Text(
              'Address: $nextOfKinStreetAddress, $nextOfKinProvince, $nextOfKinCity, $nextOfKinPostalCode'),
          pw.SizedBox(height: 20),
          //pw.Text(
          //    'Address: $lessorStreetAddress, $lessorSuburb, $lessorCity, $lessorPostalCode'),
          //pw.SizedBox(height: 20),
          //Lessee information

          // Contract terms with lessee signature placeholder
          pw.Text('Contract Terms',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.Bullet(text: '$topTen1', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen2', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen3', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen4', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen5', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen6', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen7', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen8', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen9', style: pw.TextStyle(fontSize: 12)),
          pw.Bullet(text: '$topTen10', style: pw.TextStyle(fontSize: 12)),
          pw.SizedBox(height: 20),
          pw.Text('Your Monthly Rent will never go above what NSFAS pays',
              style: pw.TextStyle(fontSize: 12)),
          pw.SizedBox(height: 10),
          // Core contract clauses
          pw.Text(
              'The lessor rents the above-named property to the lessee under the following conditions and stipulations:',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),

          //contract clauses under the top ten
          //allows padding left of 20 to all text fields inside of it
          pw.Padding(
            padding: pw.EdgeInsets.only(left: 20),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                      '1. The lessee occupies the following part of the property: [House]',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '2. This rental contract will start on ' +
                          startDate.day.toString() +
                          ' ' +
                          startMonthName +
                          ' ' +
                          startDate.year.toString() +
                          ' and will expire on ' +
                          endDate.day.toString() +
                          ' ' +
                          endMonthName +
                          ' ' +
                          endDate.year.toString() +
                          ' .All items must be removed from the fridge and rooms 7 days after classes and exams end at the end of [year]. We have the right to remove everything from [Date] if you have not renewed your contract in writing.',
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '3. Should the lessee wish to vacate the property within this period, he/she is responsible for finding a new tenant agreed upon by the agent to take over their contract.',
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '4. The lessee will not have the right to transfer this contract or any part of it. The lessee will also not have the right to lease the property or any part of it to a third party or give permission to anybody else to occupy or use it.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '5. [Lessor name] reserves the right to move cash student to another property if needed.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '6. In the event of a student wanting to move to another room on the same property or to a room in another property the student needs to pay a moving fee of R1000 before keys will be released for the new property.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '7. No termination letters will be released to a student after the closing date of Private Accomodation applications',
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text('8. Electricity: $electricityRules',
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text('9. Water: $waterRules',
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '10. No room keys will be released without proof of payment of the full admin fee.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '11. Sharing rooms that are not occupied by 2 tenants will be seen as single rooms and will be billed as single rooms. The following options are available at [Lessor name] discretion.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '11.1. Possibility that tenant will be moved to another sharing room.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text('11.2. Or stay in the sharing room as a single room.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '12. Payment Structure for ' +
                          currentDate.year.toString(),
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 5),
                  pw.Text(
                      'The rent is payable monthly before the 7th day of each month, unless there is proof that the person responsible for the rent gets paid after the 15th, until this agreement is terminated. The lessee undertakes to pay this amount directly into the bank account (no cash) of the lessor. Correct reference must be indicated on the deposit slip - [House name/your student number].',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 20),
                  pw.RichText(
                    text: pw.TextSpan(
                      children: [
                        pw.TextSpan(
                          text: 'Bank Charges: ',
                          style: pw.TextStyle(
                              fontSize: 14, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.TextSpan(
                            text:
                                'When paying cash into our account there will be bank charges which WILL be added onto the account of the tenant. ',
                            style: pw.TextStyle(fontSize: 10)),
                        pw.TextSpan(
                          text: 'NO CASH WILL BE ACCEPTED AT THE OFFICE.',
                          style: pw.TextStyle(
                              fontSize: 10, fontWeight: pw.FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 20),
                  //
                  // SHARING ROOMS CONDITION
                  //
                  if (roomType.toUpperCase() == 'SHARING ROOM' ||
                      roomType.toUpperCase() == 'SHARING')
                    pw.Column(children: [
                      pw.Text('Sharing Room in Commune/ Sharing Flat',
                          style: pw.TextStyle(
                              fontSize: 14, fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'Rent: R ' +
                              monthlyRent.toString() +
                              ' x ' +
                              contractDuration(startDate, endDate).toString() +
                              ' = R ' +
                              totalRent.toString(),
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Text(
                          'Deposit: R2500 x 1       (REFUNDABLE IF FULL AMOUNT WAS PAID',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Text(
                          'R1000 Electricity fee if move in before 20 January ' +
                              currentDate.year.toString(),
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'Tenants that stay in Sharing Rooms/ Sharing Flats pay sharing prices and paid their full admin fee will eligble to recieve their R2500 non-refundable admin fee back (Only if full amount was paid) if the following criteria are met during the course of the year:',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Bullet(
                          text:
                              'Both tenants in the room needs to be uploaded and approved within 30 days of the house appearing on Oracle.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'Both tenants keys are handed in at the office before leaving Bloemfontein at the end of the year. Keys will be checked to see if the correct keys were handed in and all of the keys are available that was given to the tenant.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'No damage has been caused to the room/bed/desk and chair by the tenants.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'The room has been cleaned by the tenants and all the rubbish, unwanted books and food is thrown away.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Text(
                          'NB! People staying in sharing flats are responsible to buy thei own electricity for the flat.'),
                      pw.SizedBox(height: 30),
                    ]),
                  //
                  // SINGLE ROOMS CONDITION
                  //
                  if (roomType.toUpperCase() == 'SINGLE ROOM' ||
                      roomType.toUpperCase() == 'SINGLE')
                    pw.Column(children: [
                      pw.Text(
                          'Single Room in Commune/ Single Flat/ Lifestyle Sharings',
                          style: pw.TextStyle(
                              fontSize: 14, fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'Rent: R ' +
                              monthlyRent.toString() +
                              ' x ' +
                              contractDuration(startDate, endDate).toString() +
                              ' = R ' +
                              totalRent.toString(),
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Text('Admin Fee: R1000 (REFUNDABLE)',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Text('Admin Fee: R2500 (NON-REFUNDABLE)',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Text(
                          'R1000 Electricity fee if move in before 20 January ' +
                              currentDate.year.toString(),
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'Tenants staying in a Single Room/ Single Flat has to pay R1000 towards rent until NSFAS pays out, will be eligible to receive their R1000 back (only if full amount was paid) if the following criteria are met during the course of the year:',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Bullet(
                          text:
                              'Tenant needs to be uploaded and approved within 30 days of the house appearing on oracle.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'Tenants keys are handed in at the office before leaving Bloemfontein at the end of the year. Keys will be checked to see if the correct keys were handed in and all of the keys are available that were given to the tenant.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'No damage has been caused to the room/bed/desk and chair by the tenants.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'The room has been cleaned by the tenant and all the rubbish, unwanted books and food is thrown away.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'NB! People staying in single rooms are responsible to buy their own electricity for the flat.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 30),
                    ]),
                  //Ubuntu 4 Two
                  if (roomType.toUpperCase() == 'UBUNTU 4 TWO' ||
                      roomType.toUpperCase() == 'UBUNTU' ||
                      roomType.toUpperCase() == 'UBUNTU FOR TWO' ||
                      roomType.toUpperCase() == 'UBUNTU FOR 2')
                    pw.Column(children: [
                      pw.Text('Ubuntu 4 Two sharing deal',
                          style: pw.TextStyle(
                              fontSize: 14, fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'Admin Fee: R1250 refundable admin fee (Only if full amount was paid) if the following criteria is met. ',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Bullet(
                          text:
                              'Tenant needs to be uploaded and approved within 30 days of the house appearing on oracle.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'You must stay in a sharing room in Let It accommodation for the remainder of studies at the current institution that you are signed up for.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text: 'You need to be screened and finalized all paperwork for your room before 15 Feb 2025, if' +
                              'you do not comply your room will be rented out and you forfeit your R1250.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.Bullet(
                          text:
                              'You can only move to a sharing room in the same price bracket.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Bullet(
                          text:
                              'The R1250 admin fee can be used for fines if rules are broken.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Bullet(
                          text:
                              'The refund of the R1250 will be finalized after the student supplies letter of completion.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 10),
                      pw.Text(
                          'NB! People staying in single rooms are responsible to buy their own electricity for the flat.',
                          style: pw.TextStyle(fontSize: 10)),
                      pw.SizedBox(height: 30),
                    ]),
                  pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Text(
                        'Lessee Signature: ',
                        style: pw.TextStyle(
                          fontSize: 10,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.SizedBox(width: 5), // Adjust spacing as needed
                      pw.Container(
                        width: 100,
                        height: 100,
                        alignment: pw.Alignment
                            .centerLeft, // Aligns the image to the left within the container
                        child: pw.FittedBox(
                          fit: pw.BoxFit.contain,
                          child: pw.Image(studentImage),
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 40),
                  pw.Center(
                      child: pw.Column(children: [
                    pw.Text(
                        'PLEASE NOTE: ALL REFUNDS WILL BE PROCESSED BY LATEST END OF JANUARY [YEAR]',
                        style: pw.TextStyle(
                            fontSize: 14, fontWeight: pw.FontWeight.bold))
                  ])),
                  pw.SizedBox(height: 30),
                  pw.Text(
                      '13. If the lessee finds with occupation of the property that the property or any equipment or contents thereof, ' +
                          'including ovens, electric installations with extensions is defective, he/she will inform the lessor or agent of ' +
                          'such defects in writing (via email) within seven days after occupation. In failing to do so the lessee ' +
                          'agrees thus that the whole of the named property is in an acceptable condition. The lessee further agrees ' +
                          'to care and maintain the whole of the named property and to keep it in good order and in the same ' +
                          'condition during the term of this rental contract. The lessee agrees to return the named property in a good ' +
                          'an appropriate condition to the lessor at the termination of the rental term, acceptable and reasonable wear ' +
                          'and tear excluded. The lessee undertakes to repair or pay for the repair of any damages incurred to the ' +
                          'named property by his/her actions or the action of a person or persons under his/her supervision. Let It ' +
                          'reserves the right to market and show the rooms to any prospective tenant/s or 3rd party during the last few ' +
                          'months of the year if the rooms were not reserved by any of the current year\'s students. ',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '14. Every tenant is responsible for his own door. If for any reason the door is broken, kicked or damaged in any ' +
                          'way the tenant will be responsible for getting it fixed to the original state it was found in when lease was ' +
                          'signed. The tenant has 7 days from moving in to give us notice of damaged door. Notice can be given on ' +
                          'email - fixit@let-it.co.za.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '15. Any breakage or other damage to the building or its contents must be reported within 24 hours by the ' +
                          'lessee to the agent.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '16. The lessee undertakes hereby to keep all drainpipes, water pipes, gutters, and floodwater pipes free of ' +
                          'obstruction and/or blockages. The lessor is only responsible for damage caused by reasonable and ' +
                          'acceptable wear and tear and blockages not controlled by the lessee',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '17. The lessee may not make any structural or other changes or additions to the property or any installation ' +
                          'thereof and he/she may not drive any nails or screws into the walls, ceilings, doors and furniture and no ' +
                          'Prestik or any double-sided tape on the walls of the named property. The lessee may not do or let anybody ' +
                          'do anything that will damage any part of the named property.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '18. The lessee will not have the right to make any alterations to the property without the written consent of the ' +
                          'lessor. If any alterations may be made with such consent, the lessee may not remove such alterations at ' +
                          'the termination of this agreement.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '19. The lessor undertakes or guarantee no inside reparations or renovations to the property and is only' +
                          'responsible for damage due to acceptable and reasonable wear and tear.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '20. The lessor will not be responsible for the cost of repairs or maintenance done without his consent. The ' +
                          'lessee will not have the right to subtract costs of repairs or maintenance from the rent without the consent of ' +
                          'the lessor. If the lessee has any problems due to damages or reparations, he/she must contact the agent.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '21. The lessee may not make use of any apparatus connected to the electrical installation of the property that ' +
                          'will according to the lessor cause an overload or short circuit or any other damage if used separately or with ' +
                          'other apparatus. The lessee must supply the agent with a list of electrical apparatus which he/she will use ' +
                          'in the room.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '22. Nothing that will render the fire protection policy of the lessor invalid or forfeit it in any way may be brought ' +
                          'onto or stored on the premises of the named property.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '23. The lessor will have the right to inspect (or permit inspection of) the property at any convenient time to see ' +
                          'that the lessee complies with the stipulations of this agreement. If the lessor wants to market the property, ' +
                          'he will inform the lessee in due course, after which the property will be shown at reasonable times to ' +
                          'prospective clients',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '24. Any notice given to the lessee will be taken as read if addressed to him/her at the address of the property, ' +
                          'which address the lessee herewith chooses as his/her domicile executant.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '25. If the rent, as noted, or any other amount or amounts payable to the lessor by the lessee is not paid ' +
                          'on the expiry date or if the lessee breaks (or fails to comply to) this agreement in any way ' +
                          'whatsoever, the lessor will have the right to cancel this contract immediately without notice and ' +
                          'take back the property. In such case the lessor will have the right to commence any action needed ' +
                          'for the immediate vacation of the property by the lessee, without any damage to the rights of the ' +
                          'lessor to claim rent in arrears, or any such damage which the lessor may have due to breach of ' +
                          'contract by the lessee, including legal costs. Any permission or lenience from the lessor with ' +
                          'regard to the breaking of any stipulations of this contract by the lessee will not be taken into ' +
                          'account to the disadvantage of the lessor with regard to any previous or later breach of contract (or ' +
                          'stipulation(s) of this agreement) by the lessee. The lessor also has the right to take action against ' +
                          'tenants whose rent is in arrears.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '26. In the event that the owner sells the property to another party during or after termination of this ' +
                          'lease, the new owner may determine if he/she wants to continue with the lease agreement, then the ' +
                          'current owner will give the tenants at least 1 (one) months notice of termination of the contracts.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '27. Swimming pool: The owner has the right to decide whether he will upkeep the swimming pool or ' +
                          'close it/cover it. Tenants make use of the swimming pool at own risk. No guests are allowed to swim in the ' +
                          'pool.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text('28. Household Agreement: ',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Bullet(
                      text: 'Tenants are responsible for the replacement of globes in their rooms. We are only ' +
                          'responsible for the replacement of globes in the common areas of a student house.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text: 'Each tenant is responsible for the cleaning and neatness of his/her own room commonly for the ' +
                          'cleaning and neatness of the bathrooms, toilets, showers, TV-room and kitchen.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'All windows must be closed after the last tenant has left the building (due to weather conditions ' +
                              'when nobody is home).',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'ONLY tenants are allowed to use the laundry facilities at the house.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'Tenants will be responsible for the repair of any damage done to walls and doors by any kind of ' +
                              'sticking material or glue.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'No bicycle or like transport vehicle may be brought inside the house.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text: 'Tenants must prevent oil leaks from their own cars, or that of their visitors, from staining the ' +
                          'driveway. Tenants are only allowed to have a car if the car is registered to the tenant and the ' +
                          'tenant has a valid driver\'s license. No fixing or maintenance of vehicles may be done at the ' +
                          'property. Tenants are not allowed to wash their cars at the premises.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'Smoking of cigarettes, drugs, hubbly bubbly under no circumstances allowed inside the ' +
                              'rooms/flats/house.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'Tenants are responsible for the removal (killing) of ants and spiders from the house and their ' +
                              'rooms.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text: 'NO 2 PLATE STOVES OR ANY HEATERS ARE ALLOWED IN ANY ROOM. It will be confiscated ' +
                          'and will only be returned when the student moves out. Fan heaters will only be allowed if the ' +
                          'room has been fitted with a prepaid electricity meter. No heater except a fan heater will be ' +
                          'allowed if any other heater is found in a room where there is a prepaid meter it will also be ' +
                          'confiscated. ',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.Bullet(
                      text:
                          'NO FURNITURE OR APPLIANCES MAY BE REMOVED FROM THIS PROPERTY WITHOUT ' +
                              'WRITTEN CONCENT FROM OWNER or AGENT.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '29. All keys must be returned to the agent on the day of vacating the room. If the tenant is travelling ' +
                          'home after office hours, please make arrangements during office hours with relevant staff (connect) ' +
                          'regarding your keys. Should you not return your key no refund will be processed and paid out. a ' +
                          'R500 fine will be added to your account and the refund will only be processed in January of the next ' +
                          'year. Refunds will only be done after receiving your keys and room inspections have been done by ' +
                          'the office.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '30. The lessee must occupy the house with the consideration of the rights of the other tenants and neighbors. ' +
                          'The wi-fi may temporarily be switched off should a single tenant or more tenants not cooperate and adhere ' +
                          'to the contract or House rules or in the case where there are behavioral challenges that needs to be ' +
                          'addressed. The agent reserves the right to give a penalty fee with the wi-fi services being switched off. In a ' +
                          'severe case of a party being hosted at the property the agent reserves the right to stop all purchasing of ' +
                          'electricity for the property until a penalty fee has been paid by parties involved.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text('31. No pets may be kept on the premises.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '32. The lessor accepts no responsibility whatsoever for damages or injuries to any person or property on the ' +
                          'premises due to break-in, theft, fire, rain, hail, wind, leakage (due to damage to the roof, gutters or walls), ' +
                          'slippery floors or steps or due to any cause whatsoever.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '33. The lessee is responsible for his/her own short-term insurance.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '34. The tenant is responsible to come to the office if his/her keys are lost. Let it accommodation can provide the ' +
                          'tenant with a new set of keys for R50 - R100 per key depending on the keys that needs to be cut. ',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '35. The lessee may not plant or remove any trees or shrubs on/from the premises. He/she may not cut off any ' +
                          'branches from any trees or shrubs on the named property.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '36. The following is agreed upon with regard to guests:',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Bullet(
                      text: 'If the guests of the tenant wish to stay over, even for 1 night, permission is to be obtained in writing from ' +
                          'the agent. You will be charged R200 per night for a person to stay over. Should we find that you have ' +
                          'guests that stay over and you did not get approval, you will be fined R1000.00, and your room will ' +
                          'be locked until the fine is paid.' +
                          'The tenant is separately and commonly responsible for any damage done to the property by his/her guests.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      '37. The tenant is responsible to report any lost keys to the office immediately in order for Let It Accommodation ' +
                          'to replace the keys. If there is a cost, it will be determined at the office.',
                      style: pw.TextStyle(fontSize: 10)),
                  pw.SizedBox(height: 10)
                ]),
          ),

          pw.SizedBox(height: 10),
          pw.Text(
              'Signed Electronically on ' +
                  currentDate.day.toString() +
                  ' ' +
                  currentMonthName +
                  ' ' +
                  currentDate.year.toString(),
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text(
              'ON THIS FIRST DAY OF ' +
                  currentMonthName.toString() +
                  ' ' +
                  currentDate.year.toString(),
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Text(
                'Lessee Signature: ',
                style: pw.TextStyle(
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(width: 5), // Adjust spacing as needed
              pw.Container(
                width: 100,
                height: 100,
                alignment: pw.Alignment
                    .centerLeft, // Aligns the image to the left within the container
                child: pw.FittedBox(
                  fit: pw.BoxFit.contain,
                  child: pw.Image(studentImage),
                ),
              ),
            ],
          ),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Text(
                'Lessor Signature: ',
                style: pw.TextStyle(
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(width: 5), // Adjust spacing as needed
              pw.Container(
                width: 100,
                height: 100,
                alignment: pw.Alignment
                    .centerLeft, // Aligns the image to the left within the container
                child: pw.FittedBox(
                  fit: pw.BoxFit.contain,
                  child: pw.Image(image),
                ),
              ),
            ],
          ),
          //house rules
          //ANNEXURE B
          pw.Text('Annexure B.',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),
          pw.Text('HOUSE RULES AND FINES APPLICABLE:',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'No drinking of alcohol on premises',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'No smoking in the house',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'No music may be played unless it is with earphones in your ears',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'No Screaming or yelling',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'NO HOUSE PARTIES or group gatherings.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'No one may sleep over unless arranged and paid at the office.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'No 2 plate stoves or any heaters are allowed in any room unless you have a prepaid meter in your' +
                  'room. It will be confiscated and returned when the contract expires and a penalty fee will be' +
                  'charged.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'ONLY tenants are allowed to use the laundry facilities at the house.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'All windows need to be closed when you leave your room.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'No outside plugs may be used via extensions in order to have electricity in your room.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Respect each other.', style: pw.TextStyle(fontSize: 10)),
          pw.Text(
              'We have the right to charge a penalty fee between R200 - R1000 per person if the rules are not obeyed.' +
                  'The amount will be set depending on the offence.',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('In severe cases 48-hour eviction may be faced.',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),
          //tenant signature
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Text(
                'Lessee Signature: ',
                style: pw.TextStyle(
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(width: 5), // Adjust spacing as needed
              pw.Container(
                width: 100,
                height: 100,
                alignment: pw.Alignment
                    .centerLeft, // Aligns the image to the left within the container
                child: pw.FittedBox(
                  fit: pw.BoxFit.contain,
                  child: pw.Image(studentImage),
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 40),

          //Annexure C
          //AMMENDMENT TO HOUSE RULES 2024
          pw.Text('Annexure C',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),
          pw.Text('AMMENDMENT TO HOUSE RULES [YEAR]',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('USE IN CONJUNCTION WITH CURRENT HOUSE RULES',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),
          pw.Text(
              'The following will not be tolerated, we name it the Do Not list and failing to adhere will have an impact on house or individual',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 20),
          //ROOMS
          pw.Text('Rooms',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT:',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'Stick anything on walls for example notes, hooks etc.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Cook in your room, use the kitchen.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Smoke in your room, this includes a hubbly.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Create mould in your room, open your windows and wash the mould off.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Leave food open or in paper packaging either in your rooms or in the kitchen. Rodents eats through it, ' +
                  'makes a nest nearby and it attracts more cockroaches. You will be personally liable for your own room ' +
                  'and kitchen should you not adhere to this request.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Remove, burn, or damage curtains.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Remove or damage fitted sheet that is supplied for your mattress. Wash the fitted sheet regularly. If you ' +
                  'leave the sheet filthy your mattress will get soiled, and you will be reliable for the cost of a new mattress ' +
                  'should you have damaged or neglected it to the point that it can not be used.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Remove the bulb covers. Should the university ask about the cover during their inspections, you will be ' +
                      'responsible to explain to them what happened.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Overload the pre-paid electricity meter in your room. It will trip the electricity of the whole house.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Make use of any extension leads.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  ' Leave a heater unattended or on if you are not in your room if you have an electricity pre-paid box in your room.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //EMERGENCY EQUIPMENT
          pw.Text('Emergency equipment',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text:
                  'Remove or damage the fire extinguisher or take parts of it off.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Remove any emergency signs.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Remove the emergency kit in whole or take anything out of it if there is not an emergency. Let us know if ' +
                      'you removed anything from the emergency kit.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Remove anything from the communal areas to your room, for example kettle, furniture etc.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //KITCHEN
          pw.Text('Kitchen',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'Use hobs for anything else but cooking.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Leave the hobs on if you are not cooking on it. It is not a heater that warms up the house.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Leave your personal cutlery and pots unwashed after use. Please clean immediately after you cooked for ' +
                  'filthy dishes and filthy counter space creates the perfect environment for pests and rodents. It is not our ' +
                  'responsibility to call pest control all the time due to negligence of students.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'The cleaning services is not cleaning your personal cookery. She is there to attend to her own chores. ' +
                  'Please wash and pack your dishes away. Anything that is in her way to do her work will be removed and ' +
                  'left in a black bag.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Remove kettle to any other place',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Leave spillage in the fridge unattended, please clean after yourselves.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Stoves, hobs microwave and kettles: These are a high energy (electricity) consuming household ' +
                  'appliance and should be switched off as soon as possible after it has been used. There is a limit to the ' +
                  'amount of electricity bought for the household per week. Fines will be applied to any misuse in any way.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'The oven switch may fall if the appliance is used for a period longer that it was supposed to. (The fallen ' +
                  'switch is to protect the appliance and to prevent a house fire).',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Leave food open or in paper packaging either in your rooms or in the kitchen. Rodents eats through it, ' +
                  'makes a nest nearby and it attracts cockroaches. You will be personally liable for your own room and ' +
                  'kitchen should you not adhere to this request.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Throw your left-over food down the kitchen sink. Scrape your leftovers out into the dust bin before you ' +
                  'wash your posts and cutlery. The fat and food block\'s the drain. If we need to unblock drains due to fat '
                      'and food residue the whole house will have repercussions.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Only fluids to be washed down the drains.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Take food that is not your own',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Place used pots covered or uncovered in the fridge- it creates harmful chemical reactions bad for humans',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //BATHROOMS
          pw.Text('Bathrooms',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'Create mould in bathrooms, open window after every use.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Leave a mess in the bathrooms.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Leave the toilet unflushed.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Use anything but toilet paper. Should the drain system be blocked due to any foreign items for example ' +
                  'newspapers, female products, and hair for there will be repercussions for the whole houses tenants.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Leave your hair behind after you used the shower or basin. Do not flush extensions down the drain, it ' +
                  'blocks the system. Nonadherence will have impact on all in the house',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Use all the warm water when you shower, please respect others that need to clean for class the same as you.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Waste water. Close taps that are not in use as there is a limit to the amount of water bought for the household per week.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //WI-FI
          pw.Text('Wi-Fi',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text:
                  'Misuse the Wi-fi. The strength of the Wi-Fi is sufficient for all students to study. The main purpose of the ' +
                      'Wi-Fi is for your studies.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Share Wi-Fi passwords with anyone other than your house mates.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Write tests on-line from the house, write it on campus. Loadshedding can interrupt your test or the signal ' +
                  'may become unstable due to other students not adhering to our plea not to overload the system with ' +
                  'entertainment. Unreliable speed and signals are out of the supplier\'s hands. Do not complain on the ' +
                  'group should fair usage not occur in your house.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //WASHING MACHINE
          pw.Text('Washing Machine',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text:
                  'Abuse machine. Remove any change, tissues, or items before your wash. Clothing only to be thrown in ' +
                      'the drum not where the powder or detergent must go in',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Use warm, only cold wash cycle to be used. Heavily soiled items to be hand washed first.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //ELECTRICITY
          pw.Text('Electricity',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'House has its own DB box. If a switch falls it might be that there is an appliance that is placing a burden ' +
                  'on the electricity. Take all the appliances out and flick the switch at box up.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Certain amount is bought per week for house. Use electricity sparingly. When not in your room switch the ' +
                  'light off. This is also applicable to the bathrooms and hallways.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //BULBS
          pw.Text('Bulbs',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text:
                  'Remove bulbs that is in the communal areas (bathrooms, kitchen, living room, passageway). Report on ' +
                      'house group should you need one.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Remove bulb covers. Should the university do inspection and your cover is off, you will explain to them ' +
                      'why you took it off.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //GARDEN
          pw.Text('Garden',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'Litter in the garden nor leave your empty bottles on the grounds. Our maintenance team and garden ' +
                  'services are not there to pick up your garbage nor to clean up after you.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: ' Move the washing lines or make more yourselves. Should you need more space than provided please ' +
                  'notify on the house group so we can attend to it. The university is very firm about lines that it is hanging ' +
                  'between trees. Please refrain from erecting anything by yourself. Should the university visit house and ' +
                  'find lines between trees, we will call anyone to come and explain to them why it was done',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //KEYS
          pw.Text('Keys',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'Treat your keys as if it is something that can be replaced without any consequence or second thought. ' +
                  'Should you leave your keys or lose it or give it to anyone else it is a bridge of security for the whole ' +
                  'household. If you lose the front gate or the main houses keys, we need to replace the locks and cut new ' +
                  'keys for the entire household (students, cleaning services, garden services, maintenance team). We will ' +
                  'have no choice but to fine the person that did not look after their keys.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          //WHATSAPP HOUSE GROUP
          pw.Text('WhatsApp House Group',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('DO NOT: ',
              style:
                  pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'The group is there to assist with matters that needs our attention as well as important information that ' +
                  'management need to get through to students. Maintenance queries, management queries, emergencies  ' +
                  'that the management need to be informed about. It is not a chat group, nor a place to make inappropriate ' +
                  'comments about fellow students or the teams managing the house. Any person that creates drama on ' +
                  'group, make racist comments, advertise anything will be removed immediately.',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 20),
          //CONSENT CLAUSE
          pw.Text('CONSENT CLAUSE:',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('APPLICATION FORM AND LEASE AGREEMENT',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text(
              'The tenant hereby consents that, and authorizes the landlord or agent to, at all times:',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Bullet(
              text: 'Contact, request, share and obtain information from any credit provider (or potential credit provider) or registered ' +
                  'credit bureau relevant to an assessment of the behavior, profile, payment patterns, indebtedness, whereabouts ' +
                  'and credit worthiness of the tenant.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text: 'Furnish information concerning the behavior, profile, payment patterns, indebtedness, whereabouts and ' +
                  'creditworthiness of the tenant to any registered credit bureau or to any credit provider (or potential credit provider) ' +
                  'seeking a trade reference regarding the tenant\'s dealings with the landlord.',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'Contact, request and obtain information from NSFAS, FUNDI, CUT, University of the Free State or any other institution funding students',
              style: pw.TextStyle(fontSize: 10)),
          pw.Bullet(
              text:
                  'We reserve the right to request direct payment from any institution providing bursaries to students',
              style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('DECLERATION BY THE TENANT',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text('The tenant hereby confirms that: ',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Text(
              'This lease agreement was presented to me in plain language and that I understand the contents thereof. I was ' +
                  'not forced, coerced, influenced or pressurized unduly, harassed or placed under duress to sign this agreement ' +
                  'and no unfair tactics or any other similar conduct with regard to the negotiation, conclusion, execution or ' +
                  'enforcement of this agreement were applied to me. This agreement was not the result of direct marketing and as ' +
                  'such the cooling off period as referred to in section 16 of the CPA is not applicable to this transaction. I have had ' +
                  'the opportunity to personally inspect the property prior to entering into this lease and have verified for myself that ' +
                  'it is suitable for the intended purpose of this agreement. If I did not inspect the property myself before entering ' +
                  'into this contract without viewing the property beforehand, and therefore waive any right to cancel the contract or ' +
                  'request to be moved to another room or property as result. I agree that the owner may market and show the ' +
                  'rooms and property to any person for leasing purposes if I do not wish to reserve my current room for the next ' +
                  'year. I hereby waive my right to privacy for this purpose. I am responsible for supplying everything required in the ' +
                  'property which is not reflected in this agreement. I have had the opportunity to obtain legal, parental and/or ' +
                  'guardian or other advice regarding the contents of this agreement, and I have exercised such right before signing ' +
                  'the lease agreement, or I have elected to waive such right, out of my own choice.',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Text(
                'Lessee Signature: ',
                style: pw.TextStyle(
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(width: 5), // Adjust spacing as needed
              pw.Container(
                width: 100,
                height: 100,
                alignment: pw.Alignment
                    .centerLeft, // Aligns the image to the left within the container
                child: pw.FittedBox(
                  fit: pw.BoxFit.contain,
                  child: pw.Image(studentImage),
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 20),

          //landlord signature
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Text(
                'Lessor Signature: ',
                style: pw.TextStyle(
                  fontSize: 10,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(width: 5), // Adjust spacing as needed
              pw.Container(
                width: 100,
                height: 100,
                alignment: pw.Alignment
                    .centerLeft, // Aligns the image to the left within the container
                child: pw.FittedBox(
                  fit: pw.BoxFit.contain,
                  child: pw.Image(image),
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 10),
        ];
      },
      footer: (pw.Context context) {
        return pw.Container(
          alignment: pw.Alignment.bottomRight, // Place at the bottom-right
          margin:
              const pw.EdgeInsets.only(top: 50), // Adjust to fine-tune position
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.end,
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Image(image,
                  height: 50, width: 50), // Always show the main image
              if (signature1 != null) ...[
                pw.SizedBox(height: 4),
                pw.Image(signature1,
                    height: 50, width: 50), // Direct usage, no cast needed
              ],
              if (signature2 != null) ...[
                pw.SizedBox(height: 4),
                pw.Image(signature2,
                    height: 50, width: 50), // Direct usage, no cast needed
              ],
            ],
          ),
        );
      },
    ),
  );

  // Share the PDF
  await Printing.sharePdf(
    bytes: await pdf.save(),
    filename: 'contract.pdf',
  );
}
