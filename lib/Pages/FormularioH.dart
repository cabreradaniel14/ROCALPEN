








import 'package:app_requisicion/Pages/Home.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;

import 'package:syncfusion_flutter_pdf/pdf.dart';
import '../Formularios/mobile.dart' if(dart.library.html) 'Web.dart';



class FormHomOfic extends StatefulWidget {
  const FormHomOfic({ Key key }) : super(key: key);

  @override
  _FormHomOficState createState() => _FormHomOficState();
}

class _FormHomOficState extends State<FormHomOfic> {
 UnfocusDisposition disposition = UnfocusDisposition.scope;
  var _formKey = GlobalKey<FormState>();
  
  
 TextEditingController rpe = new TextEditingController();
    TextEditingController nombre =  new TextEditingController();
    TextEditingController zona = new TextEditingController();
    TextEditingController departamento = new TextEditingController();
    TextEditingController categoria = new TextEditingController();
    TextEditingController observ = new TextEditingController();
    TextEditingController fecha = new TextEditingController();
    
    //TextEditingController camisa =  TextEditingController();
    //TextEditingController pantalon =  TextEditingController();
    //TextEditingController largo =  TextEditingController();
    //TextEditingController zapato =  TextEditingController();
     

    DateTime now = DateTime.now();
    
    
    
    

    void addReport() {
    var url = "http://192.168.100.6/ropa/addRopaHomOfic.php";

    http.post(Uri.parse(url), body: {
        "rpe": rpe.text, 
        "nombre": nombre.text,
        "zona": zona.text,
        "departamento": departamento.text,
        "categoria": categoria.text,
        "camisa": _mySelection.toString(),
        "pantalon": _mySelection2.toString(),
        "largo": _mySelection3.toString(),
        "zapato": _mySelection4.toString(),
        "observ": observ.text,
        

      
      });

    }
    String _mySelection; 
List<Map> _myJson = [{"id":0,"camisa":"26"},{"id":1, "camisa":"28"},{"id":2, "camisa": "30"},{"id":3, "camisa": "32"},{"id":4, "camisa": "34"},{"id":5, "camisa": "36"},{"id":6, "camisa": "38"},{"id":7, "camisa": "40"},{"id":8, "camisa": "42"},{"id":9, "camisa": "44"},{"id":10, "camisa": "46"},{"id":11, "camisa": "48"},{"id":12, "camisa": "50"},{"id":13, "camisa": "52"},{"id":14, "camisa": "54"},{"id":15, "camisa": "56"}];


String _mySelection2; 
List<Map> _myJson2 = [{"id":0,"pantalon":"26"},{"id":1, "pantalon":"27"},{"id":3, "pantalon": "28"},{"id":4, "pantalon": "29"},{"id":5, "pantalon": "30"},{"id":6, "pantalon": "31"},{"id":7, "pantalon": "32"},{"id":8, "pantalon": "33"},{"id":9, "pantalon": "34"},{"id":10, "pantalon": "35"},{"id":11, "pantalon": "36"},{"id":12, "pantalon": "37"},{"id":13, "pantalon": "38"},{"id":14, "pantalon": "39"},{"id":15, "pantalon": "40"},{"id":16, "pantalon": "41"},{"id":17, "pantalon": "42"},{"id":18, "pantalon": "43"},{"id":19, "pantalon": "44"},{"id":20, "pantalon": "45"},{"id":21, "pantalon": "46"},{"id":22, "pantalon": "47"},{"id":23, "pantalon": "48"},{"id":24, "pantalon": "49"},{"id":25, "pantalon": "50"},{"id":26, "pantalon": "51"},{"id":27, "pantalon": "52"},{"id":28, "pantalon": "53"},{"id":29, "pantalon": "54"},{"id":30, "pantalon": "55"},{"id":31, "pantalon": "56"}];


String _mySelection3; 
List<Map> _myJson3 = [{"id":0,"largo":"26"},{"id":1, "largo":"27"},{"id":3, "largo": "28"},{"id":4, "largo": "29"},{"id":5, "largo": "30"},{"id":6, "largo": "31"},{"id":7, "largo": "32"},{"id":8, "largo": "33"},{"id":9, "largo": "34"},{"id":10, "largo": "35"},{"id":11, "largo": "37"},{"id":12, "largo": "38"},{"id":13, "largo": "39"},{"id":14, "largo": "40"},];

String _mySelection4; 
List<Map> _myJson4 = [{"id":0,"name":"3"},{"id":1, "name":"3.5"},{"id":2, "name": "4"},{"id":3, "name": "4.5"},{"id":4, "name": "5"},{"id":5, "name": "5.5"},{"id":6, "name": "6"},{"id":7, "name": "6.5"},{"id":8, "name": "7"},{"id":9, "name": "7.5"},{"id":10, "name": "8"},{"id":11, "name": "8.5"},{"id":12, "name": "9"},{"id":13, "name": "9.5"},{"id":14, "name": "10"},{"id":15, "name": "10.5"},{"id":16, "name": "11"},{"id":17, "name": "11.5"},{"id":18, "name": "12"},{"id":19, "name": "12.5"},{"id":20, "name": "13"}];
  
bool agree = false;

  bool _isActivated = false;


bool showErrorMessage = false;
void _doSomething() {
      // Do something
  }

  
  


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
                
                children: <Widget>[
                  SizedBox(height: 40),
                  Container(
                    
                    width: 200,
                    height: 100,
        
                  child: Image.asset('assets/image/mancfe.png')
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Formulario de Prestación de Ropa de Oficina Hombre',
                    style: TextStyle(
          
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(height: 20,),
                    Text('Fecha de registro: $now'),
                    SizedBox(height: 20,),

                    

                    ListTile(
                     
                        title: new TextFormField(
                          
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
                        child: Text('Talla de Camisa:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                color: Colors.green,
                                 border: Border.all(color: Colors.green, width: 1.5),
                                 borderRadius: BorderRadius.circular(20)
                                 
                               ),
                          child: new DropdownButton<String>(
                                isDense: false,
                                hint:  Center(child: Text("Talla de camisa", style: TextStyle(color: Colors.white),textAlign: TextAlign.center)),
                                
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
                                    value: map["camisa"].toString(),
                                    
                                      child: Text(
                                        map["camisa"],textAlign: TextAlign.center,style: TextStyle(color:Colors.white),
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
                                   border: Border.all(color: Colors.green, width: 1.9),
                                   borderRadius: BorderRadius.circular(20)
                                 ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint:  Center(child: Text("Talla de pantalón", style:TextStyle(color: Colors.white),textAlign: TextAlign.center)),
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
                                        map["pantalon"],style: TextStyle(color:Colors.white),textAlign: TextAlign.center,
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
                        child: Text('Largo de pantalón:',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                 border: Border.all(color: Colors.green, width: 1.9),
                                 borderRadius: BorderRadius.circular(20)
                               ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint:  Center(child: Text("Largo de pantalón",textAlign: TextAlign.right,style:TextStyle(color: Colors.white),)),
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
                                        map["largo"],textAlign:TextAlign.center,style: TextStyle(color:Colors.white),
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
                        child: Text('Talla de zapato:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                               color: Colors.green,
                               border: Border.all(color: Colors.green, width: 1.5),
                               borderRadius: BorderRadius.circular(20)
                             ),
                            child: new DropdownButton<String>(
                                  isDense: true,
                                  hint:  Center(child: Text("Talla de zapato", textAlign: TextAlign.center,style:TextStyle(color: Colors.white))),
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
                                        map["name"],textAlign: TextAlign.center,style: TextStyle(color:Colors.white)
                                      ),
                                    );
                                  }).toList(),
                               ),
                           ),
      
                         ),
                        
                       
                      ],
                    ),
                    SizedBox(
                        height: 15,
                    ),
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
                    SizedBox(
                      height:20,
                    ),
                   



                   
                    SizedBox(height: 10,),
      
                    
                   
                      
      
                    SizedBox(height: 10,),
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
                  
                       
                           SizedBox(width: 20,),
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
                            onPressed: ()
                              
                            {
                             
                              
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

                      SizedBox(height: 10,),
                      
                         
                      
                      
                     
                      

    
                    
                ],
                
                ),
            
          ),
          
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
grid.columns.add(count: 4);
// Add a grid header row.
final PdfGridRow headerRow = grid.headers.add(1)[0];
headerRow.cells[0].value = 'Talla de camisa';
headerRow.cells[1].value = 'Talla de pantalón';
headerRow.cells[2].value = 'Largo de pantalón';
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
    'Fecha: $now', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(2, 2, 4)),
    bounds: const Rect.fromLTWH(500, 460, 1000, 90));

  List<int> bytes = document.save();
  document.dispose();

  saveAndLaunchFile(bytes, 'PDF.pdf');

  }
  
  validator(){
    if(_formKey.currentState != null && _formKey.currentState.validate()){
      print('Valido');
    } else {
      print('Campo invalido');
    }
    }

  
  



}





  
  
