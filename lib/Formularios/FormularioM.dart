import 'package:app_requisicion/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'mobile.dart' if(dart.library.html) 'Web.dart';





class FormularioM extends StatefulWidget {
  
  const FormularioM({Key key}) : super(key: key);

  @override
  State<FormularioM> createState() => _FormularioMState();
}

class _FormularioMState extends State<FormularioM> {
  TextEditingController rpe =  TextEditingController();
    TextEditingController nombre =  TextEditingController();
    TextEditingController zona =  TextEditingController();
    TextEditingController departamento =  TextEditingController();
    TextEditingController categoria =  TextEditingController();
    
    TextEditingController observ =  TextEditingController();
    TextEditingController fecha = TextEditingController();
     DateTime now = DateTime.now();

    //TextEditingController blusa =  TextEditingController();
    //TextEditingController falda =  TextEditingController();
    //TextEditingController pantalon =  TextEditingController();
    //TextEditingController largo =  TextEditingController();
    //TextEditingController calzado =  TextEditingController();

    var _formKey = GlobalKey<FormState>();
    Future addReport()async{
      var data = {
        "rpe": rpe.text,
        "nombre": nombre.text,
        "zona": zona.text,
        "departamento": departamento.text,
        "categoria": categoria.text,
        "blusa": _mySelection.toString(),
        "cadera": _mySelection1.toString(),
        "falda": _mySelection2.toString(),
        "pantalon": _mySelection3.toString(),
        "largo": _mySelection4.toString(),
        "calzado": _mySelection5.toString(),
        "cintura": _mySelection6.toString(),
        "observ": observ.text,
        "fecha": fecha.text,

      };

      var response = await http.post(Uri.parse('http://192.168.100.6//ropa/addDataFormDama.php'), body: data);
      if(response.statusCode == 200 ){
        print(response.body);
      }
    }
String _mySelection; 

List<Map> _myJson = [{"id":0,"blusa":"24"},{"id":1, "blusa":"26"},{"id":2, "blusa": "28"},{"id":3, "blusa": "30"},{"id":4, "blusa": "32"},{"id":5, "blusa": "34"},{"id":6, "blusa": "36"},{"id":7, "blusa": "38"},{"id":8, "blusa": "40"},{"id": 9, "blusa": "42"}];

String _mySelection1; 

List<Map> _myJson1 = [{"id":0,"cadera":"26"},{"id":1, "cadera":"28"},{"id":2, "cadera": "30"},{"id":3, "cadera": "32"},{"id":4, "cadera": "34"},{"id":5, "cadera": "36"},{"id":6, "cadera": "38"},{"id":7, "cadera": "40"},{"id":8, "cadera": "42"}];
 

String _mySelection2; 

List<Map> _myJson2 = [{"id":0,"falda":"23"},{"id":1, "falda":"24"},{"id":3, "falda": "25"},{"id":4, "falda": "26"},{"id":5, "falda": "27"}];

String _mySelection3; 

List<Map> _myJson3 = [{"id":0,"pantalon":"25"},{"id":1, "pantalon":"26"},{"id":3, "pantalon": "27"}];

String _mySelection4; 

List<Map> _myJson4 = [{"id":0,"largo":"28"},{"id":1, "largo":"29"},{"id":2, "largo": "30"},{"id":3, "largo": "31"},{"id":4, "largo": "32"},{"id":5, "largo": "33"},{"id":6, "largo": "34"},{"id":7, "largo": "35"},{"id":8, "largo": "36"},{"id":9, "largo": "37"},{"id":10, "largo": "38"}];

String _mySelection5; 

List<Map> _myJson5 = [{"id":0,"calzado":"2"},{"id":1, "calzado":"2.5"},{"id":2, "calzado": "3"},{"id":3, "calzado": "3.5"},{"id":4, "calzado": "4"},{"id":5, "calzado": "4.5"},{"id":6, "calzado": "5"},{"id":7, "calzado": "5.5"},{"id":8, "calzado": "6"},{"id":9, "calzado": "6.5"},{"id":10, "calzado": "7"}];

String _mySelection6; 

List<Map> _myJson6 = [{"id":0,"cintura":"26"},{"id":1, "cintura":"28"},{"id":2, "cintura": "30"},{"id":3, "cintura": "32"},{"id":4, "cintura": "34"},{"id":5, "cintura": "36"},{"id":6, "cintura": "38"},{"id":7, "cintura": "40"},{"id":8, "cintura": "42"},{"id":9, "cintura": "44"},{"id":10, "cintura": "46"},{"id":11, "cintura": "48"}];

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
        
                  child: Image.asset('assets/image/womancfe2.png')
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Formulario de Prestación de Ropa de Oficina Dama',
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
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'RPE',
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
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Nombre: ',
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
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Zona: ',
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
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Departamento: ',
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
                      decoration: InputDecoration(
                        
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        ),
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          
                        ),
                        
                        prefixIcon: Icon(Icons.add, size: 30, color: Colors.green),
                        labelText: 'Categoría: ',
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
                        child: Text('Talla de blusa:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                hint:  Center(child: Text("Talla de blusa",style:TextStyle(color: Colors.white))),
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
                                    value: map["blusa"].toString(),
                                    child: new Text(
                                      map["blusa"],style: TextStyle(color:Colors.white)
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
                      textDirection: TextDirection.ltr,
                      
                      children:<Widget> [
                        Spacer(),
                        Container(
                        child: Text('Talla de Cadera:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                hint:  Center(child: Text("Talla de Cadera",style:TextStyle(color: Colors.white))),
                                dropdownColor: Colors.green,
                                iconSize: 40.0,
                                iconEnabledColor: Colors.white,
                                isExpanded: true,
                                value: _mySelection1,
                                onChanged: ( newValue) {
                                  setState(() {
                                    _mySelection1 = newValue;
                                  });
                                
                                },
                                items: _myJson1.map((Map map) {
                                  return new DropdownMenuItem<String>(
                                    //value: map["id"].toString(),
                                    value: map["cadera"].toString(),
                                    child: new Text(
                                      map["cadera"],style: TextStyle(color:Colors.white)
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
                      textDirection: TextDirection.ltr,
                      
                      children:<Widget> [
                        Spacer(),
                        Container(
                        child: Text('Talla de cintura:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                hint:  Center(child: Text("Talla de Cintura",style:TextStyle(color: Colors.white))),
                                dropdownColor: Colors.green,
                                iconSize: 40.0,
                                iconEnabledColor: Colors.white,
                                isExpanded: true,
                                value: _mySelection6,
                                onChanged: ( newValue) {
                                  setState(() {
                                    _mySelection6 = newValue;
                                  });
                                
                                },
                                items: _myJson6.map((Map map) {
                                  return new DropdownMenuItem<String>(
                                    //value: map["id"].toString(),
                                    value: map["cintura"].toString(),
                                    child: new Text(
                                      map["cintura"],style:TextStyle(color: Colors.white)
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
                        child: Text('Largo de Falda:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                  hint:  Center(child: Text("Largo de falda",style: TextStyle(color:Colors.white))),
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
                                      value: map["falda"].toString(),
                                      child: new Text(
                                        map["falda"],style: TextStyle(color:Colors.white)
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
                                  hint:  Center(child: Text("Largo de pantalón",style: TextStyle(color:Colors.white))),
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
                                      value: map["pantalon"].toString(),
                                      child: new Text(
                                        map["pantalon"],style: TextStyle(color:Colors.white)
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
                        child: Text('Largo de pantalón:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                  hint: Center(child: new Text("Largo de pantalón", style: TextStyle(color:Colors.white))),
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
                                      value: map["largo"].toString(),
                                      child: new Text(
                                        map["largo"],style: TextStyle(color:Colors.white)
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
                        child: Text('Talla de calzado:',style: TextStyle(fontWeight: FontWeight.bold)),
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
                                  hint: Center(child: new Text("Talla de calzado", style: TextStyle(color:Colors.white))),
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
                                      value: map["calzado"].toString(),
                                      child: new Text(
                                        map["calzado"],style: TextStyle(color:Colors.white)
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
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
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
grid.columns.add(count: 7);
// Add a grid header row.
final PdfGridRow headerRow = grid.headers.add(1)[0];
headerRow.cells[0].value = 'Talla de blusa';
headerRow.cells[1].value = 'Talla de cadera';
headerRow.cells[2].value = 'Talla de falda';
headerRow.cells[3].value = 'Talla de pantalón';
headerRow.cells[4].value = 'Largo de pantalón';
headerRow.cells[5].value = 'Calzado';
headerRow.cells[6].value = 'Cintura';
// Set header font.
headerRow.style.font =
    PdfStandardFont(PdfFontFamily.helvetica, 10, style: PdfFontStyle.bold);
// Add rows to the grid.
PdfGridRow row = grid.rows.add();
row.cells[0].value = _mySelection;
row.cells[1].value = _mySelection1;
row.cells[2].value = _mySelection2;
row.cells[3].value = _mySelection3;
row.cells[4].value = _mySelection4;
row.cells[5].value = _mySelection5;
row.cells[6].value = _mySelection6;

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



}
