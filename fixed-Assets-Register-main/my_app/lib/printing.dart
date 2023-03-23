import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:printing/printing.dart';

class PrintScreen extends StatelessWidget {
  final String data;
  

  PrintScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Print QR Code'),
      ),
      body: Center(
        child: QrImage(
          data: data,
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Printing.layoutPdf(
            // onLayout: (PdfPageFormat format) {
            //   return <PDFPage>[
            //     PDFPage(
            //       build: (PdfPageFormat format) {
            //         return Center(
            //           child: QrImage(
            //             data: data,
            //             version: QrVersions.auto,
            //             size: 200.0,
            //           ),
            //         );
            //       },
            //     ),
            //   ];
              Future<bool> generatePdf() async {
  final pdf = await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async {
      // Generate PDF content
      final doc = pw.Document();
      doc.addPage(pw.Page(
        pageFormat: format,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text('Hello, world!'),
          ); // return pw.Center
        },
      )); // doc.addPage
      return doc.save(); // return Future<Uint8List>
    }, // onLayout
  ); // Printing.layoutPdf
  return pdf;
}
            },
          ));
          child: Icon(Icons.print);
        }
        // child: Icon(Icons.print),
    
}