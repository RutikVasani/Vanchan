import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ViewPdfPage extends StatelessWidget {
  final url;
  PdfViewerController? _pdfViewerController;
  ViewPdfPage({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf View"),
      ),
      body: SfPdfViewer.network(url, controller: _pdfViewerController,),
    );
  }
}
