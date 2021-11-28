import 'package:app_requisicion/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'mobile.dart' if(dart.library.html) 'Web.dart';





class FormularioTrabajadorHom extends StatefulWidget {
  
  const FormularioTrabajadorHom({Key key}) : super(key: key);

  @override
  State<FormularioTrabajadorHom> createState() => _FormularioTrabajadorHomState();
}

class _FormularioTrabajadorHomState extends State<FormularioTrabajadorHom> {
  var _formKey = GlobalKey<FormState>();
    TextEditingController rpe =  TextEditingController();
    TextEditingController nombre =  TextEditingController();
    TextEditingController zona =  TextEditingController();
    TextEditingController departamento =  TextEditingController();
    TextEditingController categoria =  TextEditingController();
    TextEditingController observ = TextEditingController();
    TextEditingController fecha = TextEditingController();
     DateTime now = DateTime.now();

    Future addReport()async{
      var data = {
        "rpe": rpe.text,
        "nombre": nombre.text,
        "zona": nombre.text,
        "departamento": departamento.text,
        "categoria": categoria.text,
        "camisola": _mySelection.toString(),
        "pantalon": _mySelection2.toString(),
        "largo": _mySelection3.toString(),
        "tipo_bota": _mySelection4.toString(),
        "talla_bota": _mySelection5.toString(),
        "observ": observ.text,
        "fecha": fecha.text,


      };

      var response = await http.post(Uri.parse('http://10.17.1.99:8080//ropa/addDataFormHomCampo.php'), body: data);
      if(response.statusCode == 200 ){
        print(response.body);
      }
    }
  
  
   String _mySelection; 

List<Map> _myJson = [{"id":0,"camisola":"26"},{"id":1, "camisola":"28"},{"id":2, "camisola": "30"},{"id":3, "camisola": "32"},{"id":4, "camisola": "34"},{"id":5, "camisola": "36"},{"id":6, "camisola": "38"},{"id":7, "camisola": "40"},{"id":8, "camisola": "42"},{"id":9, "camisola": "44"},{"id":10, "camisola": "46"},{"id":11, "camisola": "48"},{"id":12, "camisola": "50"},{"id":13, "camisola": "52"},{"id":14, "camisola": "54"},{"id":15, "camisola": "56"}];

String _mySelection2; 

List<Map> _myJson2 = [{"id":0,"pantalon":"26"},{"id":1, "pantalon":"27"},{"id":3, "pantalon": "28"},{"id":4, "pantalon": "29"},{"id":5, "pantalon": "30"},{"id":6, "pantalon": "31"},{"id":7, "pantalon": "32"},{"id":8, "pantalon": "33"},{"id":9, "pantalon": "34"},{"id":10, "pantalon": "35"},{"id":11, "pantalon": "37"},{"id":12, "pantalon": "38"},{"id":13, "pantalon": "39"},{"id":14, "pantalon": "40"},{"id":15, "pantalon": "41"},{"id":16, "pantalon": "42"},{"id":17, "pantalon": "43"},{"id":18, "pantalon": "44"},{"id":19, "pantalon": "45"},{"id":20, "pantalon": "46"},{"id":21, "pantalon": "47"},{"id":22, "pantalon": "48"},{"id":23, "pantalon": "49"},{"id":24, "pantalon": "50"},{"id":25, "pantalon": "51"},{"id":26, "pantalon": "52"},{"id":27, "pantalon": "53"},{"id":28, "pantalon": "54"},{"id":29, "pantalon": "55"},{"id":30, "pantalon": "56"}];

String _mySelection3; 

List<Map> _myJson3 = [{"id":0,"largo":"26"},{"id":1, "largo":"27"},{"id":3, "largo": "28"},{"id":4, "largo": "29"},{"id":5, "largo": "30"},{"id":6, "largo": "31"},{"id":7, "largo": "32"},{"id":8, "largo": "33"},{"id":9, "largo": "34"},{"id":10, "largo": "35"},{"id":11, "largo": "37"},{"id":12, "largo": "38"},{"id":13, "largo": "39"},{"id":14, "largo": "40"},];

String _mySelection4; 

List<Map> _myJson4 = [{"id":0,"name":"Borcegui"},{"id":1, "name":"Bota linierio"},{"id":2, "name": "Bota vulcanizada"}];



String _mySelection5; 

List<Map> _myJson5 = [{"id":0,"talla":"22"},{"id":1, "talla":"22.5"},{"id":2, "talla": "23"},{"id":3, "talla": "23.5"},{"id":4, "talla": "24"},{"id":5, "talla": "24.5"},{"id":6, "talla": "25"},{"id":7, "talla": "25.5"},{"id":8, "talla": "26"},{"id":9, "talla": "26.5"},{"id":10, "talla": "27"},{"id":11, "talla": "27.5"},{"id":12, "talla": "28"},{"id":13, "talla": "28.5"},{"id":14, "talla": "29"},{"id":15, "talla": "29.5"},{"id":16, "talla": "30"},{"id":17, "talla": "30.5"},{"id":18, "talla": "31"}];


  
bool _isActivated = false;


  @override
  Widget build(BuildContext context) {

    


    
    return Scaffold(
      
      
      body: GestureDetector(
        onTap:(){
          FocusScope.of(context).unfocus();
        },
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            
              child: Column(
                
                children: [
                  SizedBox(height: 40),
                  Container(
                    
                    width: 200,
                    height: 100,
        
                  child: Image.asset('assets/image/liniero.png')
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Formulario de Prestación de Ropa de Trabajo Hombre',
                    style: TextStyle(
          
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(height: 20,),
                     Text('Fecha de registro: $now'),
                    SizedBox(height: 20,),
                    Container(
                      
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        
                        controller: rpe,
                      validator: (value) =>
                      value.isEmpty ? "Campo requerido" : null, 
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Ingresa tu RPE',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                        )
                      )
                      ),
                    ),
        
                    SizedBox(height: 20,),
                    Container(
                      
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      margin: EdgeInsets.all(20),
                      
                      child: TextFormField(
                        
                        controller: nombre,
                       
                      validator: (value) =>
                      value.isEmpty ? "Campo requerido" : null, 
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Ingresa tú nombre completo',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                        )
                      )
                      ),
                    ),
        
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      margin: EdgeInsets.all(20),
                      
                      child: TextFormField(
                        controller: zona,
                      validator: (value) =>
                      value.isEmpty ? "Campo requerido" : null,   
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Ingresa la zona que correspondes',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                        )
                      )
                      ),
                    ),
        
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      margin: EdgeInsets.all(20),
                      
                      child: TextFormField(
                        controller: departamento,
                      validator: (value) =>
                      value.isEmpty ? "Campo requerido" : null,   
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Ingresa el departamento al que correspondes',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                        )
                      )
                      ),
                    ),
        
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      margin: EdgeInsets.all(20),
                      
                      child: TextFormField(
                        controller: categoria,
                      validator: (value) =>
                      value.isEmpty ? "Campo requerido" : null, 
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Ingresa tu categoría',
      
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                        )
                      )
                      ),
                    ),
        
                    SizedBox(height: 20,),
                    Row(
                      textDirection: TextDirection.ltr,
                      
                      children:<Widget> [
                        Spacer(),
                        Container(
                        child: Text('Talla de Camisola:',style: TextStyle(fontWeight: FontWeight.bold)),
                        height: 30,
                        width:70
                        ),
                        Center(
                            widthFactor: 1.5,
                            
                          
                           
                             
                               child: Container(                   
                               //margin: EdgeInsets.only(right: 80.0),
                               
                               height: 40.0,
                               width: 180.0,
                               decoration: BoxDecoration(
                                color:Colors.green,
                                 border: Border.all(color: Colors.green, width: 1.5),
                                 borderRadius: BorderRadius.circular(20)
                               ),
                          child: new DropdownButton<String>(
                                isDense: false,
                                hint: Center(child: new Text("Talla de camisa",style: TextStyle(color:Colors.white))),
                                dropdownColor: Colors.green,
                                iconSize: 40.0,
                                iconEnabledColor: Colors.white,
                                isExpanded: true,
                                value: _mySelection,
                                onChanged: ( newValue) {
                                  setState(() {
                                    _mySelection = newValue;
                                  });
                                
                                },
                                items: _myJson.map((Map map) {
                                  return new DropdownMenuItem<String>(
                                    //value: map["id"].toString(),
                                    value: map["camisola"].toString(),
                                    child: new Text(
                                      map["camisola"],style: TextStyle(color:Colors.white)
                                    ),
                                  );
                                }).toList(),
                             ),
                         ),
      
                       )
                      ],
                    ),
        
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Container(
                        child: Text('Talla de Pantalón:',style: TextStyle(fontWeight: FontWeight.bold)),
                        height: 30,
                        width:70
                        ),
                        Center(
                          widthFactor: 1.5,
                             
                                 child: new Container(                   
                                 //margin: EdgeInsets.only(right: 80.0),
                                 
                                 height: 40.0,
                                 width: 180.0,
                                 decoration: BoxDecoration(
                                   color:Colors.green,
                                   border: Border.all(color: Colors.green, width: 1.5),
                                   borderRadius: BorderRadius.circular(20)
                                 ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint: Center(child: new Text("Talla de pantalón",style: TextStyle(color:Colors.white))),
                                  dropdownColor: Colors.green,
                                  iconSize: 40.0,
                                  iconEnabledColor: Colors.white,
                                  isExpanded: true,
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
                                        map["pantalon"],style: TextStyle(color:Colors.white)
                                      ),
                                    );
                                  }).toList(),
                               ),
                           ),
      
                       )
                      
                        ],
                    ),
        
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                         Spacer(),
                        Container(
                        child: Text('Largo de pantalón:',style: TextStyle(fontWeight: FontWeight.bold)),
                        height: 30,
                        width:70
                        ),
                        Center(
                            widthFactor: 1.5,
                           
                               child: new Container(                   
                               //margin: EdgeInsets.only(right: 80.0),
                               
                               height: 40.0,
                               width: 180.0,
                               decoration: BoxDecoration(
                                 color:Colors.green,
                                 border: Border.all(color: Colors.green, width: 1.5),
                                 borderRadius: BorderRadius.circular(20)
                               ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint: Center(child: new Text("Largo de pantalón",style: TextStyle(color:Colors.white))),
                                  dropdownColor: Colors.green,
                                  iconSize: 40.0,
                                  iconEnabledColor: Colors.white,
                                  isExpanded: true,
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
                                        map["largo"],style: TextStyle(color:Colors.white)
                                      ),
                                    );
                                  }).toList(),
                               ),
                           ),
      
                       
                      
                        )],
                    ),
        
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Container(
                        child: Text('Tipo de bota:',style: TextStyle(fontWeight: FontWeight.bold)),
                        height: 30,
                        width:70
                        ),
                       
                       Center(
                         widthFactor: 1.5,
                         
                             child: new Container(                   
                             //margin: EdgeInsets.only(right: 80.0),
                             
                             height: 40.0,
                             width: 180.0,
                             decoration: BoxDecoration(
                               color:Colors.green,
                               border: Border.all(color: Colors.green, width: 1.5),
                               borderRadius: BorderRadius.circular(20)
                             ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint: Center(child: new Text("Tipo de bota", style: TextStyle(color:Colors.white))),
                                  dropdownColor: Colors.green,
                                  iconSize: 36.0,
                                  iconEnabledColor: Colors.white,
                                  isExpanded: true,
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
                                        map["name"],style: TextStyle(color:Colors.white)
                                      ),
                                    );
                                  }).toList(),
                               ),
                           ),
      
                         ),
                       
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Container(
                        child: Text('Talla de bota:',style: TextStyle(fontWeight: FontWeight.bold)),
                        height: 31,
                        width:70
                        ),
                       
                       Center(
                         widthFactor: 1.5,
                         
                             child: new Container(                   
                             //margin: EdgeInsets.only(right: 80.0),
                             
                             height: 40.0,
                             width: 180.0,
                             decoration: BoxDecoration(
                               color:Colors.green,
                               border: Border.all(color: Colors.green, width: 1.5),
                               borderRadius: BorderRadius.circular(20)
                             ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint: Center(child: new Text("Talla de bota", style: TextStyle(color:Colors.white))),
                                  dropdownColor: Colors.green,
                                  iconSize: 36.0,
                                  iconEnabledColor: Colors.white,
                                  isExpanded: true,
                                  value: _mySelection5,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      _mySelection5 = newValue;
                                    });
                                    print (_mySelection5);
                                  },
                                  items: _myJson5.map((Map map) {
                                    return new DropdownMenuItem<String>(
                                      //value: map["id"].toString(),
                                      value: map["talla"].toString(),
                                      child: new Text(
                                        map["talla"],style: TextStyle(color:Colors.white)
                                      ),
                                    );
                                  }).toList(),
                               ),
                           ),
      
                         ),
                       
                      ],
                    ),

                    SizedBox(height: 20,),

                    Container(
                      decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2)
                ),
                          width: 300,
                          height: 100,
                          child: TextFormField(
                            controller: observ,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                         labelText: "Observaciones. ",
                      ),
                          )

                        ),
      
        
                  


                
      
                    
      
                    SizedBox(height: 15,),
                    Row(
                      children:<Widget> [
                        Container(
                               alignment: Alignment.centerLeft,
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
                      ],
                    ),
                        SizedBox(height: 10,),
                         Row(
                      children: <Widget>[
       
                       Center(
                         child: Checkbox(
                          
                          value:
                        _isActivated, 
                        onChanged: (bool valueIn){
                          setState(() {
                            _isActivated = valueIn;
                          });
                                           }),
                       ),
       
                      Text('Acepto que todos mis datos con correctos.')
                      ]
                    ),

                     SizedBox(height: 10,),
                    
                       TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          
                          elevation: 5,
                          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                         textStyle: TextStyle(
                           color: Colors.black,
                           fontSize: 20,
                           fontWeight: FontWeight.w800,
                           
                           
                           
                         ),
                         backgroundColor: Colors.green,
                         onSurface: Colors.grey
                        ),
                        onPressed:(){
                         
                          if(_formKey.currentState.validate()){
                            addReport();
                            Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Home(),
                            ),
                            (route) => false,
                          );
                          }
        
                        },
                        
                        child: Text('Aceptar'),
                      ),
                      SizedBox(height: 20,)
                    
                ],
                ),
            
          ),
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
    'RPE: ' +rpe.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 120, 150, 50));   
page.graphics.drawString(
    'Zona: ' +zona.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 140, 150, 50));   
page.graphics.drawString(
    'Departamento: ' +departamento.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(10, 160, 150, 50)); 
page.graphics.drawString(
    'Categoría: ' +categoria.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(500, 160, 150, 50)); 

page.graphics.drawString(
    nombre.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(500, 120, 150, 50));


    //Get the page orientation.
   // document.pageSettings.size = PdfPageSize.a4;

//document.pageSettings.rotate = PdfPageRotateAngle.rotateAngle90;
//Create page and draw text.
final PdfGrid grid = PdfGrid();
// Specify the grid columns count.
grid.columns.add(count: 5);
// Add a grid header row.
final PdfGridRow headerRow = grid.headers.add(1)[0];
headerRow.cells[0].value = 'Talla de camisola';
headerRow.cells[1].value = 'Talla de pantalón';
headerRow.cells[2].value = 'Largo de pantalón';
headerRow.cells[3].value = 'Tipo de bota';
headerRow.cells[4].value = 'Talla de bota';

// Set header font.
headerRow.style.font =
    PdfStandardFont(PdfFontFamily.helvetica, 10, style: PdfFontStyle.bold);
// Add rows to the grid.
PdfGridRow row = grid.rows.add();
row.cells[0].value = _mySelection;
row.cells[1].value = _mySelection2;
row.cells[2].value = _mySelection3;
row.cells[3].value = _mySelection4;
row.cells[4].value = _mySelection5;

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
    'Observaciones: '+observ.text, PdfStandardFont(PdfFontFamily.helvetica, 12),
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
    'Fecha: $now' , PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(500, 460, 1000, 90));

  List<int> bytes = document.save();
  document.dispose();

  saveAndLaunchFile(bytes, 'PDF.pdf');

  }


}