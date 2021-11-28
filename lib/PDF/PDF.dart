
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import '../Formularios/mobile.dart';



class MyPDFViewer extends StatefulWidget {
  MyPDFViewer({Key key}) : super(key: key);

  @override
  _MyPDFViewerState createState() => _MyPDFViewerState();
}

class _MyPDFViewerState extends State<MyPDFViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
    children: <Widget>[


    

     ElevatedButton(
    onPressed: _createPDF, 
    child: Text('Create PDF'),

    ),
    
    ]
    
    ),
 
    );
  }

  Future<void> _createPDF() async{
  PdfDocument document = PdfDocument();
   final page = document.pages.add();

    page.graphics.drawString('Welcome',
      PdfStandardFont(PdfFontFamily.helvetica, 30));

  List<int> bytes = document.save();
  document.dispose();

  saveAndLaunchFile(bytes, 'PDF.pdf');

  }



}