
// ignore_for_file: missing_return, duplicate_ignore


import 'package:app_requisicion/Pages/Home2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'mobile.dart' if(dart.library.html) 'Web.dart';



class EditFormDamaOficina extends StatefulWidget {
  final List list;
  final int index;

  EditFormDamaOficina({this.list, this.index});

  @override
  _EditFormDamaOficinaState  createState() => new _EditFormDamaOficinaState();
}

class _EditFormDamaOficinaState extends State<EditFormDamaOficina> {

  // ignore: non_constant_identifier_names
  TextEditingController controllerrpe;
  TextEditingController controllernombre;
  TextEditingController controllerzona;
  TextEditingController controllerdepartamento;
  TextEditingController controllercategoria;
  TextEditingController controllerblusa;
  TextEditingController controllercadera;
  TextEditingController controllercintura;
  TextEditingController controllerfalda;
  TextEditingController controllerpantalon;
  TextEditingController controllerlargo;
  TextEditingController controllercalzado;
  TextEditingController controllerobserv;
  TextEditingController controllermonedero;
  

  bool isVisible = false;


  void editData() {

    



     var url ="http://10.17.1.99:8080/ropa/editDataFormDama.php";
    http.post(Uri.parse(url), body: 
     {
      "id": widget.list[widget.index]['id'],
      "rpe": controllerrpe.text,
      "nombre": controllernombre.text,
      "zona": controllerzona.text,
      "departamento": controllerdepartamento.text,
      "categoria": controllercategoria.text,
      "blusa": controllerblusa.text,
      "cadera": controllercadera.text,
      "cintura": controllercintura.text,
      "falda": controllerfalda.text,
      "pantalon": controllerpantalon.text,
      "largo": controllerlargo.text,
      "calzado": controllercalzado.text,
      "observ": controllerobserv.text,
      "monedero": controllermonedero.text,
      
      

    });
  }


  @override
    void initState() {
      controllerrpe= new TextEditingController(text: widget.list[widget.index]['rpe'] );
      controllernombre= new TextEditingController(text: widget.list[widget.index]['nombre'] );
      controllerzona = new TextEditingController(text: widget.list[widget.index]['zona'] );
      controllerdepartamento= new TextEditingController(text: widget.list[widget.index]['departamento'] );
      controllercategoria= new TextEditingController(text: widget.list[widget.index]['categoria'] );
      controllerblusa= new TextEditingController(text: widget.list[widget.index]['blusa'] );
      controllercadera= new TextEditingController(text: widget.list[widget.index]['cadera'] );
      controllercintura= new TextEditingController(text: widget.list[widget.index]['cintura'] );
      controllerfalda= new TextEditingController(text: widget.list[widget.index]['falda'] );
      controllerpantalon= new TextEditingController(text: widget.list[widget.index]['pantalon'] );
      controllerlargo= new TextEditingController(text: widget.list[widget.index]['largo'] );
      controllercalzado= new TextEditingController(text: widget.list[widget.index]['calzado'] );
      controllerobserv= new TextEditingController(text: widget.list[widget.index]['observ'] );
      controllermonedero= new TextEditingController(text: widget.list[widget.index]['monedero'] );
      
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDITAR LISTA DE REQUISICIONES"),backgroundColor: Colors.green,
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
                      controller: controllerrpe,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "rpe";
                          },
                      decoration: new InputDecoration(
                        hintText: "RPE", labelText: "RPE",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: controllernombre,
                      textCapitalization: TextCapitalization.characters,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "nombre";
                          },
                      decoration: new InputDecoration(
                        hintText: "Nombre", labelText: "Nombre",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerzona,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "zona";
                          },
                      decoration: new InputDecoration(
                        hintText: "Zona", labelText: "Zona",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerdepartamento,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "departamento";
                          },
                      decoration: new InputDecoration(
                        hintText: "Departamento", labelText: "Departamento",
                      ),
                    ),
                  ),
                  
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllercategoria,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "categoria";
                          },
                      decoration: new InputDecoration(
                        hintText: "Categoría", labelText: "Categoría",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerblusa,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "blusa ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Blusa", labelText: "Blusa",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerfalda,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "falda: ";
                          },
                      decoration: new InputDecoration(
                        hintText: "Falda", labelText: "Falda",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllercadera,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "Cadera";
                          },
                      decoration: new InputDecoration(
                        hintText: "Cadera", labelText: "Cadera",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllercintura,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "Cintura";
                          },
                      decoration: new InputDecoration(
                        hintText: "Cintura", labelText: "Cintura",
                      ),
                    ),
                  ),

                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerpantalon,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "pantalon";
                          },
                      decoration: new InputDecoration(
                        hintText: "Pantalón", labelText: "Pantalón",
                      ),
                    ),
                  ),
                  
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerlargo,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "largo";
                          },
                      decoration: new InputDecoration(
                        hintText: "Largo", labelText: "Largo",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllercalzado,
                      textCapitalization: TextCapitalization.characters,
                          validator: (value) {
                            if (value.isEmpty) return "calzado";
                          },
                      decoration: new InputDecoration(
                        hintText: "Calzado", labelText: "Calzado",
                      ),
                    ),
                  ),
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
                          builder: (BuildContext context)=>new HomeUser()
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
grid.columns.add(count: 7);
// Add a grid header row.
final PdfGridRow headerRow = grid.headers.add(1)[0];
headerRow.cells[0].value = 'Talla de blusa';
headerRow.cells[1].value = 'Talla de cadera';
headerRow.cells[2].value = 'Talla de cintura';
headerRow.cells[3].value = 'Talla de pantalón';
headerRow.cells[4].value = 'Talla de falda';
headerRow.cells[5].value = 'Talla de largo';
headerRow.cells[6].value = 'Talla de calzado';

// Set header font.
headerRow.style.font =
    PdfStandardFont(PdfFontFamily.helvetica, 10, style: PdfFontStyle.bold);
// Add rows to the grid.
PdfGridRow row = grid.rows.add();
row.cells[0].value = controllerblusa.text;
row.cells[1].value = controllercadera.text;
row.cells[2].value = controllercintura.text;
row.cells[3].value = controllerpantalon.text;
row.cells[4].value = controllerfalda.text; 
row.cells[5].value = controllerlargo.text;
row.cells[6].value = controllercalzado.text;

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

page.graphics.drawString(
    'Cantidad de Monedero: '+controllermonedero.text , PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(500, 460, 1000, 90));

  List<int> bytes = document.save();
  document.dispose();

  saveAndLaunchFile(bytes, 'PDF.pdf');

  }


}