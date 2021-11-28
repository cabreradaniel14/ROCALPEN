// ignore_for_file: deprecated_member_use



import 'package:app_requisicion/Listar/Listar2.dart';
import 'package:app_requisicion/Pages/Home2.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'mobile.dart' if(dart.library.html) 'Web.dart';





class EditUserHomOfic extends StatefulWidget {
  final Student student;

  EditUserHomOfic({this.student});

  @override
  _EditUserHomOficState createState() => _EditUserHomOficState();
}

class _EditUserHomOficState extends State<EditUserHomOfic> {
  // This is  for form validations
  final formKey = GlobalKey<FormState>();
  

  // This is for text onChange
  TextEditingController rpeController;
  TextEditingController nombreController;
  TextEditingController zonaController;
  TextEditingController departamentoController;
  TextEditingController categoriaController;
  TextEditingController camisaController;
  TextEditingController pantalonController; 
  TextEditingController largoController;
  TextEditingController zapatoController;
  TextEditingController observController;






  // Http post request
  Future editStudent() async {
    var url = "http://10.17.1.99:8080/ropa/EditDataFormHom.php";
    return await http.post(Uri.parse(url),
      body: {
        "id": widget.student.id.toString(),
        "rpe": rpeController.text,
        "nombre": nombreController.text,
        "zona": zonaController.text,
        "departamento": departamentoController.text,
        "categoria": categoriaController.text,
        "camisa": _mySelection.toString(),
        "pantalon": _mySelection2.toString(),
        "largo": _mySelection3.toString(),
        "zapato": _mySelection4.toString(),
        "observ": observController.text,
      },
    );
  }
  String _mySelection; 
List<Map> _myJson = [{"id":0,"camisa":"26"},{"id":1, "camisa":"28"},{"id":2, "camisa": "30"},{"id":3, "camisa": "32"},{"id":4, "camisa": "34"},{"id":5, "camisa": "36"},{"id":6, "camisa": "38"},{"id":7, "camisa": "40"},{"id":8, "camisa": "42"},{"id":9, "camisa": "44"},{"id":10, "camisa": "46"},{"id":11, "camisa": "48"},{"id":12, "camisa": "50"},{"id":13, "camisa": "52"},{"id":14, "camisa": "54"},{"id":15, "camisa": "56"}];


String _mySelection2; 
List<Map> _myJson2 = [{"id":0,"pantalon":"26"},{"id":1, "pantalon":"27"},{"id":3, "pantalon": "28"},{"id":4, "pantalon": "29"},{"id":5, "pantalon": "30"},{"id":6, "pantalon": "31"},{"id":7, "pantalon": "32"},{"id":8, "pantalon": "33"},{"id":9, "pantalon": "34"},{"id":10, "pantalon": "35"},{"id":11, "pantalon": "36"},{"id":12, "pantalon": "37"},{"id":13, "pantalon": "38"},{"id":14, "pantalon": "39"},{"id":15, "pantalon": "40"},{"id":16, "pantalon": "41"},{"id":17, "pantalon": "42"},{"id":18, "pantalon": "43"},{"id":19, "pantalon": "44"},{"id":20, "pantalon": "45"},{"id":21, "pantalon": "46"},{"id":22, "pantalon": "47"},{"id":23, "pantalon": "48"},{"id":24, "pantalon": "49"},{"id":25, "pantalon": "50"},{"id":26, "pantalon": "51"},{"id":27, "pantalon": "52"},{"id":28, "pantalon": "53"},{"id":29, "pantalon": "54"},{"id":30, "pantalon": "55"},{"id":31, "pantalon": "56"}];


String _mySelection3; 
List<Map> _myJson3 = [{"id":0,"largo":"26"},{"id":1, "largo":"27"},{"id":3, "largo": "28"},{"id":4, "largo": "29"},{"id":5, "largo": "30"},{"id":6, "largo": "31"},{"id":7, "largo": "32"},{"id":8, "largo": "33"},{"id":9, "largo": "34"},{"id":10, "largo": "35"},{"id":11, "largo": "37"},{"id":12, "largo": "38"},{"id":13, "largo": "39"},{"id":14, "largo": "40"},];

String _mySelection4; 
List<Map> _myJson4 = [{"id":0,"name":"3"},{"id":1, "name":"3.5"},{"id":2, "name": "4"},{"id":3, "name": "4.5"},{"id":4, "name": "5"},{"id":5, "name": "5.5"},{"id":6, "name": "6"},{"id":7, "name": "6.5"},{"id":8, "name": "7"},{"id":9, "name": "7.5"},{"id":10, "name": "8"},{"id":11, "name": "8.5"},{"id":12, "name": "9"},{"id":13, "name": "9.5"},{"id":14, "name": "10"},{"id":15, "name": "10.5"},{"id":16, "name": "11"},{"id":17, "name": "11.5"},{"id":18, "name": "12"},{"id":19, "name": "12.5"},{"id":20, "name": "13"}];
  
  

  void _onConfirm(context) async {
    await editStudent();
  }

  @override
  void initState() {
    rpeController = TextEditingController(text: widget.student.rpe);
    nombreController = TextEditingController(text: widget.student.nombre);
    zonaController = TextEditingController(text: widget.student.zona);
    departamentoController = TextEditingController(text: widget.student.departamento);
    categoriaController = TextEditingController(text: widget.student.categoria);
    pantalonController = TextEditingController(text: widget.student.pantalon);
    largoController = TextEditingController(text: widget.student.largo);
    observController = TextEditingController(text: widget.student.observ);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDITAR"),
        backgroundColor:  Colors.green,
      ),
      body: Form(       
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              new Column(
                children: <Widget>[
                 new ListTile(
                    leading: const Icon(Icons.list_alt, color: Colors.black),
                    title: new TextFormField(
                      controller: rpeController,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un RPE";
                          },
                      decoration: new InputDecoration(
                        hintText: "RPE", labelText: "RPE",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.add,color: Colors.black),
                    title: new TextFormField(
                      controller: nombreController,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un nombre";
                          },
                      decoration: new InputDecoration(
                        hintText: "Nombre", labelText: "Nombre",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: departamentoController,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un Departamento";
                          },
                      decoration: new InputDecoration(
                        hintText: "Departamento", labelText: "Departamento",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: categoriaController,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa una Categpría";
                          },
                      decoration: new InputDecoration(
                        hintText: "Categoría", labelText: "Categoría",
                      ),
                    ),
                  ),
                  
                 Row(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.list),
                     ),
                     VerticalDivider(width: 40.0,),
                     Expanded(
                                            child: new Container(                   
                         //margin: EdgeInsets.only(right: 80.0),
                         height: 50.0,
                         width: 100.0,
                        child: new DropdownButton<String>(
                              isDense: true,
                              hint: new Text(widget.student.camisa),
                              iconSize: 40.0,
                              elevation: 10,
                              value: _mySelection,
                              onChanged: (String newValue) {
                                setState(() {
                                  _mySelection = newValue;
                                });
                                print (_mySelection);
                              },
                              items: _myJson.map((Map map) {
                                return new DropdownMenuItem<String>(
                                  //value: map["id"].toString(),
                                  value: map["camisa"].toString(),
                                  child: new Text(
                                    map["camisa"],
                                  ),
                                );
                              }).toList(),
                           ),
                       ),
                     ),
                   ],
                 ),

                 Row(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.list),
                     ),
                     VerticalDivider(width: 40.0,),
                     Expanded(
                                            child: new Container(                   
                         //margin: EdgeInsets.only(right: 80.0),
                         height: 50.0,
                         width: 100.0,
                        child: new DropdownButton<String>(
                              isDense: true,
                              hint: new Text(widget.student.pantalon),
                              iconSize: 40.0,
                              elevation: 10,
                              value: _mySelection2,
                              onChanged: (String newValue) {
                                setState(() {
                                  _mySelection2 = newValue;
                                });
                                print (_mySelection2);
                              },
                              items: _myJson2.map((Map map) {
                                return new DropdownMenuItem<String>(
                                  //value: map["id"].toString(),
                                  value: map["pantalon"].toString(),
                                  child: new Text(
                                    map["pantalon"],
                                  ),
                                );
                              }).toList(),
                           ),
                       ),
                     ),
                   ],
                 ),

                  Row(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.list),
                     ),
                     VerticalDivider(width: 40.0,),
                     Expanded(
                                            child: new Container(                   
                         //margin: EdgeInsets.only(right: 80.0),
                         height: 50.0,
                         width: 100.0,
                        child: new DropdownButton<String>(
                              isDense: true,
                              hint: new Text(widget.student.largo),
                              iconSize: 40.0,
                              elevation: 10,
                              value: _mySelection3,
                              onChanged: (String newValue) {
                                setState(() {
                                  _mySelection3 = newValue;
                                });
                                print (_mySelection3);
                              },
                              items: _myJson3.map((Map map) {
                                return new DropdownMenuItem<String>(
                                  //value: map["id"].toString(),
                                  value: map["largo"].toString(),
                                  child: new Text(
                                    map["largo"],
                                  ),
                                );
                              }).toList(),
                           ),
                       ),
                     ),
                   ],
                 ),

                

                 Row(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.list),
                     ),
                     VerticalDivider(width: 40.0,),
                     Expanded(
                                            child: new Container(                   
                         //margin: EdgeInsets.only(right: 80.0),
                         height: 50.0,
                         width: 100.0,
                        child: new DropdownButton<String>(
                              isDense: true,
                              hint: new Text(widget.student.zapato),
                              iconSize: 40.0,
                              elevation: 10,
                              value: _mySelection4,
                              onChanged: (String newValue) {
                                setState(() {
                                  _mySelection4 = newValue;
                                });
                                print (_mySelection4);
                              },
                              items: _myJson4.map((Map map) {
                                return new DropdownMenuItem<String>(
                                  //value: map["id"].toString(),
                                  value: map["name"].toString(),
                                  child: new Text(
                                    map["name"],
                                  ),
                                );
                              }).toList(),
                           ),
                       ),
                     ),
                   ],
                 ),

                 Container(
                      decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2)
                ),
                          width: 200,
                          height: 100,
                          child: TextFormField(
                            controller: observController,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                         labelText: "Observaciones. ",
                      ),
                          )

                        ),

                         SizedBox(height: 10,),
                         Row(
                           children:<Widget>[
                            Container(
                             alignment: Alignment.centerRight,
                             child: FloatingActionButton(
                                                    
                                child: Icon(Icons.picture_as_pdf),
                                elevation: 50.0,
                                backgroundColor: Colors.amber, onPressed: () { _createPDF(); },
                              ),
                           ),
                           Container(
                               width: 20,
                             ),
                        Text('Genera tu comprobante de requisición')
                           ]
                         ),



                 
                  const Divider(
                    height: 1.0,
                  ),                 
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  new RaisedButton(
                    child: new Text("Guardar"),
                    color: Colors.green,
                    onPressed: () {
                      _onConfirm(context);
                      Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => HomeUser(),
      ),
      (route) => false,
    );
                    },
                    
                  )
                ],
              ),
            ],
          ),
      ),
    );
  
    
  }

  Future<void> _createPDF() async{
  PdfDocument document = PdfDocument();

document.pageSettings.orientation = PdfPageOrientation.landscape;

//Adds a page to the document
PdfPage page = document.pages.add();








page.graphics.drawString(
    'Comisión Federal de Electricidad', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(280, 10, 200, 90));
page.graphics.drawString(
    'Subgerencia de Trabajo', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(300, 30, 150, 60));
page.graphics.drawString(
    'División Peninsular', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(310, 50, 150, 50));

page.graphics.drawString(
    'RPE: ' +rpeController.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 120, 150, 50));   
page.graphics.drawString(
    'Zona: ' +zonaController.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 140, 150, 50));   
page.graphics.drawString(
    'Departamento: ' +departamentoController.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 160, 150, 50)); 
page.graphics.drawString(
    'Categoría: ' +categoriaController.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(500, 160, 150, 50)); 

page.graphics.drawString(
    nombreController.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(500, 120, 150, 50));


    //Get the page orientation.
   // document.pageSettings.size = PdfPageSize.a4;

//document.pageSettings.rotate = PdfPageRotateAngle.rotateAngle90;
//Create page and draw text.
final PdfGrid grid = PdfGrid();
// Specify the grid columns count.
grid.columns.add(count: 4);
// Add a grid header row.
final PdfGridRow headerRow = grid.headers.add(1)[0];
headerRow.cells[0].value = 'Talla de camisa';
headerRow.cells[1].value = 'Talla de pantalón';
headerRow.cells[2].value = 'Largo de largo';
headerRow.cells[3].value = 'Talla de zapato';

// Set header font.
headerRow.style.font =
    PdfStandardFont(PdfFontFamily.helvetica, 10, style: PdfFontStyle.bold);
// Add rows to the grid.
PdfGridRow row = grid.rows.add();
row.cells[0].value = _mySelection;
row.cells[1].value = _mySelection2;
row.cells[2].value = _mySelection3;
row.cells[3].value = _mySelection4;

//Set padding for grid cells
grid.style.cellPadding = PdfPaddings(left: 2, right: 5, top: 400, bottom: 70);





// Set grid format.
grid.style.cellPadding = PdfPaddings(left: 5, top: 1);
// Draw table in the PDF page.
grid.draw(
    page: page,
    bounds: Rect.fromLTWH(
        10, 250, page.getClientSize().width, page.getClientSize().height));
page.graphics.drawString(
    'Observaciones: '+observController.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(90, 350, 1000, 90));

page.graphics.drawString(
    '______________________', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(250, 450, 1000, 90));
page.graphics.drawString(
    'Nombre y Firma', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(280, 460, 1000, 90));



  List<int> bytes = document.save();
  document.dispose();

  saveAndLaunchFile(bytes, 'PDF.pdf');

  }






}

