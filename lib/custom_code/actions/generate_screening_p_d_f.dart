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

String currentDate(DateTime current) {
  String date = current.day.toString() +
      "/" +
      current.month.toString() +
      "/" +
      current.year.toString();
  return date;
}

Future<void> generateScreeningPDF(
    String screeningSignature,
    String yearOfStudy,
    String firstRegistration,
    String nsfasFundedPreviousYear,
    String firstRecievedNsfasYear,
    String outstandingFees,
    String institution,
    String qualification,
    String courseDuration,
    String mainOrExtended,
    String pracsDuringTheYear,
    String onlineClasses,
    String percentageModulesPassed,
    String apMark,
    String courseChanged,
    String campusChanged,
    String numSemesterReg,
    String stayPreviousYear,
    String appeal,
    String tenantName,
    String tenantSurname,
    String tenantIDNum,
    String tenantEmail,
    String tenantStudentNumber,
    String tenantPhoneNum,
    String fundingConfirmationMethod,
    String nsfasFundedCurrentYear) async {
  final pdf = pw.Document();

  final response = await http.get(Uri.parse(screeningSignature));
  final image = pw.MemoryImage(response.bodyBytes);

  // CONTENT OF THE CONTRACT
  pdf.addPage(pw.MultiPage(build: (pw.Context context) {
    return [
      // Centered header section
      pw.Center(
        child: pw.Column(
          children: [
            pw.Text('Screening',
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text('2025 Accommodation Application',
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text(
                'Please note that all questions must be answered truthfully, as proof of ADS (Academic Data Summary) must be attached for verification.'
                'By filling in this form, the student acknowledges that they are aware the information provided is mandatory in order to secure a spot in '
                'LET IT Student Accommodation. The information provided is necessary to determine whether the student is a suitable candidate for a room.',
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 24),
          ],
        ),
      ),
      // Student information
      pw.Text('Name & Surname: ' + tenantName + ' ' + tenantSurname,
          style: pw.TextStyle(fontSize: 12)),
      pw.Text('Student ID Number: ' + tenantIDNum,
          style: pw.TextStyle(fontSize: 12)),
      pw.Text(
        'Tel Number: ' + tenantPhoneNum,
      ),
      pw.Text('Email: ' + tenantEmail),
      pw.Text('Student Number: $tenantStudentNumber'),

      pw.SizedBox(height: 20),

      // POPI ACT
      pw.Center(
        child: pw.Column(
          children: [
            pw.Text('POPI ACT',
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text('AGREEMENT AND CONSENT DECLARATION',
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text(
                'YOU HEREBY DECLARE AND CONFIRM THAT YOU, AS AN INDIVIDUAL WHO IS PROVIDING INFORMATION AND HEREINAFTER COLLECTIVELY REFERRED TO AS THE CLIENT, DO IRREVOCABLY AGREE AND UNDERSTAND THAT ALL INFORMATION SUPPLIED OR GIVEN TO THE SERVICE PROVIDER IS DONE SO IN TERMS OF THE BELOW TERMS AND CONDITIONS AND IN TERMS OF THIS AGREEMENT AND CONSENT DECLARATION.',
                style:
                    pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 24),
          ],
        ),
      ),
      pw.SizedBox(height: 20),

      // Declaration by student
      pw.Text(
          'We, LET IT Student Accommodation, hereby declare the proper handling of any and all personal information. This is not limited to and may include academic data, e.g., course information, modules; personal data such as student and ID numbers; NSFAS agreements; outstanding fees; accommodation arrangements which were previously or are currently in effect. We will uphold this agreement as required by law, provided that the client provides us with proper and true information.',
          style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold)),
      pw.SizedBox(height: 10),

      pw.Padding(
        padding: pw.EdgeInsets.only(left: 20),
        child: pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Text(
              'I, ' +
                  tenantName +
                  ' ' +
                  tenantSurname +
                  ', hereby acknowledge that all information provided is true and creditable. I also agree to '
                      'be held liable for any information falsely provided. By signing this contract, I give LET IT Student Accommodation the '
                      'proper consent to handle my personal information.',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Text(
                'Student Signature: ',
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
          pw.SizedBox(height: 30),

          // Screening Questions
          pw.Text('1. What year of study are you in 2025?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(yearOfStudy, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('2. In which year did you first register?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(firstRegistration, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('3. Were you NSFAS funded in 2024?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(nsfasFundedPreviousYear, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('4. Are you NSFAS funded in 2025?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(nsfasFundedCurrentYear, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text(
              '5. In which year did you first receive NSFAS/Funding confirmation?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(firstRecievedNsfasYear, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('6. In which way did you receive NSFAS/Funding confirmation?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(fundingConfirmationMethod, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('7. Do you have any outstanding accommodation fees?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(outstandingFees, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('8. Are you a UFS or CUT student?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(institution, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('9. What do you study?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(qualification, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('10. What is the duration of your course?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(courseDuration, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('11. Are you mainstream or an extended program?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(mainOrExtended, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('12. Do you have off-campus practicals during the year?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(pracsDuringTheYear, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('13. Do you have any online classes?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(onlineClasses, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('14. Did you pass at least 70% of your modules?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(percentageModulesPassed, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('15. What was your AP mark in matric?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(apMark, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('16. Have you changed courses before?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(courseChanged, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('17. Have you changed campuses before?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(campusChanged, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('18. For how many semesters are you registered?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(numSemesterReg, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('19. Where were you staying the previous year?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(stayPreviousYear, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),
          pw.Text('20. Have you had an academic or financial appeal before?',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 5),
          pw.Text(appeal, style: pw.TextStyle(fontSize: 10)),
          pw.SizedBox(height: 10),

          // Signature
          //pw.Row(
          //  crossAxisAlignment: pw.CrossAxisAlignment.center,
          //  children: [
          //    pw.Text(
          //      'Lessor Signature: ',
          //      style: pw.TextStyle(
          //        fontSize: 10,
          //        fontWeight: pw.FontWeight.bold,
          //      ),
          //    ),
          //    pw.SizedBox(width: 5), // Adjust spacing as needed
          //    pw.Container(
          //      width: 100,
          //      height: 100,
          //      alignment: pw.Alignment.centerLeft, // Aligns the image to the left within the container
          //      child: pw.FittedBox(
          //        fit: pw.BoxFit.contain,
          //        child: pw.Image(image),
          //      ),
          //    ),
          //  ],
          //),

          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Text(
                'Student Signature: ',
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
          pw.SizedBox(height: 20),
          pw.Text('Receptionist Signature:_________________________',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 50),
          pw.Text('Debtor Signature:_________________________',
              style:
                  pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold)),
        ]),
      ),
      // footer
      //  pw.Footer(
      //    child: pw.Container(
      //      alignment: pw.Alignment.bottomRight, // Place at the bottom-right
      //      margin: const pw.EdgeInsets.only(top: 50), // Adjust to fine-tune position
      //      child: pw.Image(image, height: 50, width: 50), // Signature image
      //    ),
      //  ),
    ];
  }, header: (pw.Context context) {
    return pw.Container(
      alignment: pw.Alignment.topRight, // Place at the top-right
      margin: const pw.EdgeInsets.only(
          top: 0.01, bottom: 0.1), // Adjust position if needed
      child: pw.Opacity(
        opacity: 0.2, // Adjust opacity for watermark effect
        child: pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
          pw.Text(currentDate(DateTime.now()),
              style: pw.TextStyle(fontSize: 14))
        ]), // Adjust size as needed
      ),
    );
  }));

  // Share the PDF
  await Printing.sharePdf(
    bytes: await pdf.save(),
    filename: 'contract.pdf',
  );
}
