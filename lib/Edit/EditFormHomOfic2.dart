
// ignore_for_file: missing_return, deprecated_member_use, duplicate_ignore

import 'package:app_requisicion/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'mobile.dart' if(dart.library.html) 'Web.dart';



class EditFormHombreOficina2 extends StatefulWidget {
  final List notas;
  final int index;

  EditFormHombreOficina2({this.notas, this.index});

  @override
  _EditFormHombreOficina2State  createState() => new _EditFormHombreOficina2State();
}
class Note{
  String title;
  String text;

  Note(this.title, this.text);

  Note.fromJson(Map<dynamic, dynamic> json) {
    title = json['nombre'];
    text = json['zona'];
  }
}

class _EditFormHombreOficina2State extends State<EditFormHombreOficina2> {

  // ignore: non_constant_identifier_names
  TextEditingController controllerrpe;
  TextEditingController controllernombre; 
  TextEditingController controllerzona;
  TextEditingController controllerdepartamento;
  TextEditingController controllercategoria;
  TextEditingController controllercamisa;
  TextEditingController controllerpantalon;
  TextEditingController controllerlargo;
  TextEditingController controllerzapato;
  TextEditingController controllermonedero;
  TextEditingController controllerobserv;
  

  


  void editData() {





     var url ="http://10.17.1.99:8080/ropa/EditDataFormHom.php";
    http.post(Uri.parse(url), body: 
     {
      "id": widget.notas[widget.index]['id'],
      "rpe": controllerrpe.text,
      "nombre": controllernombre.text,
      "zona": controllerzona.text,
      "departamento": controllerdepartamento.text,
      "categoria": controllercategoria.text,
      "camisa": controllercamisa.text,
      "pantalon": controllerpantalon.text,
      "largo": controllerlargo.text,
      "zapato": controllerzapato.text,
      "monedero": controllermonedero.text,
      "observ": controllerobserv.text,
      

    });
  }

  bool isVisible = false;
  bool isVisible2 = false;
  @override
    void initState() {
      controllerrpe= new TextEditingController(text: widget.notas[widget.index]['rpe'] );
      controllernombre= new TextEditingController(text: widget.notas[widget.index]['nombre'] );
      controllerzona = new TextEditingController(text: widget.notas[widget.index]['zona'] );
      controllerdepartamento= new TextEditingController(text: widget.notas[widget.index]['departamento'] );
      controllercategoria= new TextEditingController(text: widget.notas[widget.index]['categoria'] );
      controllercamisa= new TextEditingController(text: widget.notas[widget.index]['camisa'] );
      controllerpantalon= new TextEditingController(text: widget.notas[widget.index]['pantalon'] );
      controllerlargo= new TextEditingController(text: widget.notas[widget.index]['largo'] );
      controllerzapato= new TextEditingController(text: widget.notas[widget.index]['zapato'] );
      controllermonedero= new TextEditingController(text: widget.notas[widget.index]['monedero'] );
      controllerobserv= new TextEditingController(text: widget.notas[widget.index]['observ'] );
      
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar( 
        title: new Text("Editar Pedido de Ropa"),backgroundColor: Colors.green,
      ),
      body: Form(       
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new ListTile(
                      leading: const Icon(Icons.vpn_key, color: Colors.black),
                      title: new TextFormField(
                        controller: controllerrpe,
                        textCapitalization: TextCapitalization.characters,
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
                    leading: const Icon(Icons.person, color: Colors.black),
                    title: new TextFormField(
                      controller: controllernombre,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un Nombre:";
                          },
                      decoration: new InputDecoration(
                        hintText: "Nombre", labelText: "Nombre",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.gps_not_fixed,color: Colors.black),
                    title: new TextFormField(
                      controller: controllerzona,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa una Zona";
                          },
                      decoration: new InputDecoration(
                        hintText: "Zona", labelText: "Zona",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.room,color: Colors.black),
                    title: new TextFormField(
                      controller: controllerdepartamento,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Departamento: ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Departamento", labelText: "Departamento",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.category_rounded,color: Colors.black),
                    title: new TextFormField(
                      controller: controllercategoria,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Categoría: ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Categoría", labelText: "Categoría",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.add,color: Colors.black),
                    title: new TextFormField(
                      controller: controllercamisa,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Camisa ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Camisa", labelText: "Camisa",
                      ),
                    ),
                  ),
                  
                  new ListTile(
                    leading: const Icon(Icons.add, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerpantalon,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Pantalón: ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Pantalón", labelText: "Pantalón",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.add, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerlargo,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "Largo ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Largo", labelText: "Largo",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.add, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerzapato,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "Zapato ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Zapato", labelText: "Zapato",
                      ),
                    ),
                  ),
                  
                   SizedBox(height: 15,),

                  Container(
                      decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2)
                ),
                          width: 200,
                          height: 100,
                          child: TextFormField(
                            controller: controllerobserv,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                         labelText: "Observaciones. ",
                      ),
                          )

                        ),





                  Visibility(
                    visible: isVisible,
                    child: Container(
                      child: TextFormField(
                        controller: controllermonedero,
                        decoration: new InputDecoration(
                          hintText: "Porcentaje de tarjeta", labelText:"Porcentaje")
                      )
                  

                    ),
                  ),
                  Switch(
                  
                  value: isVisible,
                  
                  onChanged: (value){
                    setState(() {
                      isVisible = value;
                    });
                  }
                  
                  
                  ),
                  
                new Text('Aplica monedero'),
                  

                  const Divider(
                    height: 1.0,
                  ),                 
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  SizedBox(height: 10,),
                         Container(
                           alignment: Alignment.centerRight,
                           child: FloatingActionButton(
                                                  
                              child: Icon(Icons.picture_as_pdf),
                              elevation: 50.0,
                              backgroundColor: Colors.amber, onPressed: () { _createPDF(); },
                            ),
                         ),
                  
                       
                           SizedBox(width: 20,),
                  new RaisedButton(
                    child: new Text("Guardar"),
                    color: Colors.green,
                    onPressed: () {
                      editData();
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context)=>new Home()
                        )
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
const String paragraphText =
'Comisión Federal de Electricidad '
'Subgerencia de Trabajo '
'División Peninsular';
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
    'RPE: ' +controllerrpe.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 120, 150, 50));   
page.graphics.drawString(
    'Zona: ' +controllerzona.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 140, 150, 50));   
page.graphics.drawString(
    'Departamento: ' +controllerdepartamento.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 160, 150, 50)); 
page.graphics.drawString(
    'Categoría: ' +controllercategoria.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(500, 160, 150, 50)); 

page.graphics.drawString(
    controllernombre.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
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
row.cells[0].value = controllercamisa.text;
row.cells[1].value = controllerpantalon.text;
row.cells[2].value = controllerlargo.text;
row.cells[3].value = controllerzapato.text;

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
    'Observaciones: '+controllerobserv.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
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