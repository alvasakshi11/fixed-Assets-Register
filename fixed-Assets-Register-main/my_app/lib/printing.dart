// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:printing/printing.dart';
// import 'package:pdf/widgets.dart'as pw;


// class PrintScreen extends StatelessWidget {
//   final String data;
  

//   PrintScreen(barcode, {required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Print QR Code'),
//       ),
//       body: Center(
//         child: QrImage(
//           data: data,
//           version: QrVersions.auto,
//           size: 200.0,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Printing.layoutPdf(
//             // onLayout: (PdfPageFormat format) {
//             //   return <PDFPage>[
//             //     PDFPage(
//             //       build: (PdfPageFormat format) {
//             //         return Center(
//             //           child: QrImage(
//             //             data: data,
//             //             version: QrVersions.auto,
//             //             size: 200.0,
//             //           ),
//             //         );
//             //       },
//             //     ),
//             //   ];
//               Future<bool> generatePdf() async {
//   final pdf = await Printing.layoutPdf(
//     onLayout: (PdfPageFormat format) async {
//       // Generate PDF content
//       final doc = pw.Document();
//           doc.addPage(pw.Page(
//         build: (pw.Context context) {
//           return pw.Center(
//             child: pw.Image(QRImage),
//           );
//         }));
//     await Printing.layoutPdf(
//         onLayout: (format) => doc.save(),); // doc.addPage
//       // return buildPrintableData(QrImage); // return Future<Uint8List>
//     }, // onLayout
//   ); // Printing.layoutPdf
//   return pdf;
// }
//             },
//           ));
//           child: Icon(Icons.print);
//         }
//         // child: Icon(Icons.print),
    
// }


import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

buildPrintableData(image) => pw.Padding(
      padding: const pw.EdgeInsets.all(25.00),
      child: pw.Column(children: [
        pw.Text("vijaycreations",
            style:
                pw.TextStyle(fontSize: 25.00, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 10.00),
        pw.Divider(),
        pw.Align(
          alignment: pw.Alignment.topRight,
          child: pw.Image(
            image,
            width: 250,
            height: 250,
          ),
        ),
        pw.Column(
          children: [
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.SizedBox(width: 5.5),
                pw.Text(
                  "Invoice",
                  style: pw.TextStyle(
                      fontSize: 23.00, fontWeight: pw.FontWeight.bold),
                )
              ],
            ),
            pw.SizedBox(height: 10.00),
            pw.Container(
              color: const PdfColor(0.5, 1, 0.5, 0.7),
              width: double.infinity,
              height: 36.00,
              child: pw.Center(
                child: pw.Text(
                  "Approvals",
                  style: pw.TextStyle(
                      color: const PdfColor(0.2, 0.6, 0.2, 0.7),
                      fontSize: 20.00,
                      fontWeight: pw.FontWeight.bold),
                ),
              ),
            ),
            for (var i = 0; i < 3; i++)
              pw.Container(
                color: i % 2 != 0
                    ? const PdfColor(0.9, 0.9, 0.9, 0.6)
                    : const PdfColor(1, 1, 1, 0.1),
                width: double.infinity,
                height: 36.00,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 25.0),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      i == 2
                          ? pw.Text(
                              "Tax",
                              style: pw.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pw.FontWeight.bold),
                            )
                          : pw.Text(
                              "Item ${i + 1}",
                              style: pw.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pw.FontWeight.bold),
                            ),
                      i == 2
                          ? pw.Text(
                              "\$ 2.50",
                              style: pw.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pw.FontWeight.normal),
                            )
                          : pw.Text(
                              "\$ ${(i + 1) * 7}.00",
                              style: pw.TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: pw.FontWeight.normal),
                            ),
                    ],
                  ),
                ),
              ),
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 25.0),
              child: pw.Container(
                width: double.infinity,
                height: 36.00,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.end,
                  children: [
                    pw.Text(
                      "\$ 23.50",
                      style: pw.TextStyle(
                        fontSize: 22.00,
                        fontWeight: pw.FontWeight.bold,
                        color: const PdfColor(0.2, 0.6, 0.2, 0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            pw.SizedBox(height: 15.00),
            pw.Text(
              "Thanks for choosing our service!",
              style: const pw.TextStyle(
                  color: PdfColor(0.5, 0.5, 0.5, 0.5), fontSize: 15.00),
            ),
            pw.SizedBox(height: 5.00),
            pw.Text(
              "Contact the branch for any clarifications.",
              style: const pw.TextStyle(
                  color: PdfColor(0.5, 0.5, 0.5, 0.5), fontSize: 15.00),
            ),
            pw.SizedBox(height: 15.00),
          ],
        )
      ]),
    );