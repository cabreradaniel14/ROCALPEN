
import 'package:app_requisicion/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/services.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerNombres = new TextEditingController();
  TextEditingController controllerApellido = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerRPE = new TextEditingController();
  TextEditingController controllerRepeatRPE = new TextEditingController();
  TextEditingController controlleruser = new TextEditingController();
  TextEditingController controllergenero = new TextEditingController();
  //TextEditingController controllerNivel = new TextEditingController();

  var _formKey = GlobalKey<FormState>();

  

  void addData() {
  

    http.post(Uri.parse("http://10.17.1.99:8080//ropa/adduser.php"), body: {
      "nombre": controllerNombres.text,
      "apellido": controllerApellido.text,
      "rpe": controllerRPE.text,
      
      "contraseña": controllerPassword.text,

      "genero": _mySelection.toString(),
      "zona": _mySelection2.toString(),
      "trabajador": _mySelection3.toString(),
      "usuario":  _mySelection4.toString(),

      
    });
  }
  String validatePassword(String value) {
   print("valorrr $value passsword ${controllerRPE.text}");
   if (value != controllerRPE.text) {
     return "Las contraseñas no coinciden";
   }
   return null;
 }

  String _mySelection; 
  List<Map> _myJson = [{"id":0,"name":"MASCULINO"},{"id":1, "name":"FEMENINO"}];

  String _mySelection2; 
  List<Map> _myJson2 = [{"id":0,"name2":"MERIDA"},{"id":1, "name2":"MOTUL"},{"id":2, "name2": "TIZIMIN"},{"id":3, "name2": "TICUL"},{"id":4, "name2": "CAMPECHE"},{"id":5, "name2": "CARMEN"}, {"id":6, "name2": "CANCUN"},{"id":7, "name2": "CHETUMAL"},{"id":8, "name2": "DIVISIONAL"},{"id":9, "name2": "RIVIERA MAYA"}];
  
  String _mySelection3; 
  List<Map> _myJson3 = [{"id":0,"name3":"CONFIANZA"},{"id":1, "name3":"SINDICALIZADO"}];

    String _mySelection4; 
  List<Map> _myJson4 = [{"id":0,"name4":"user"}];

String nameKey = "_key_name";


 




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Registrar "),
      ),
      body: GestureDetector(
        onTap:(){
          FocusScope.of(context).unfocus();
        },
        child: Form(
        
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
          
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new ListTile(
                      leading: const Icon(Icons.person, color: Colors.black),
                      title: new TextFormField(
                        controller: controllerNombres,
                        textCapitalization: TextCapitalization.characters,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) return "Ingresa un valor en el campo";
                            },
                        decoration: new InputDecoration(
                          hintText: "Nombres", labelText: "Nombres",
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(Icons.person, color: Colors.black),
                      title: new TextFormField(
                        controller: controllerApellido,
                        textCapitalization: TextCapitalization.characters,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) return "Ingresa un valor en el campo";
                            },
                        decoration: new InputDecoration(
                          hintText: "Apellidos", labelText: "Apellidos",
                        ),
                      ),
                    ),
      
                    new ListTile(
                      leading: const Icon(Icons.keyboard, color: Colors.black),
                      title: new TextFormField(
                        controller: controllerRPE,
                        textCapitalization: TextCapitalization.characters,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) return "Ingresa un valor en el campo";
                            },
                        decoration: new InputDecoration(
                          hintText: "RPE", labelText: "RPE",
                        ),
                      ),
                    ),
      
                     new ListTile(
                      leading: const Icon(Icons.keyboard, color: Colors.black),
                      title: new TextFormField(
                        controller: controllerRepeatRPE,
                        textCapitalization: TextCapitalization.characters,
                          validator: validatePassword,
                        decoration: new InputDecoration(
                          hintText: "Repite tú RPE", labelText: "RPE",
                        ),
                      ),
                    ),
      
                   
                    
                     /*Row(
                     children: <Widget>[
                       new Container(
                         margin: EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.person),
                       ),
                       VerticalDivider(width: 40.0,),
                       Expanded(
                                              child: new Container(                   
                           //margin: EdgeInsets.only(right: 80.0),
                           height: 50.0,
                           width: 100.0,
                          child: new DropdownButton<String>(
                                isDense: true,
                                hint: new Text("Género"),
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
                   ),*/
      
      
      
      
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
                                hint: new Text("Zona"),
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
                                    value: map["name2"].toString(),
                                    child: new Text(
                                      map["name2"],
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
                                hint: new Text("Trabajador"),
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
                                    value: map["name3"].toString(),
                                    child: new Text(
                                      map["name3"],
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
                          child: Icon(Icons.person),
                       ),
                       VerticalDivider(width: 40.0,),
                       Expanded(
                                              child: new Container(                   
                           //margin: EdgeInsets.only(right: 80.0),
                           height: 50.0,
                           width: 100.0,
                          child: new DropdownButton<String>(
                                isDense: true,
                                hint: new Text("Usuario"),
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
                                    value: map["name4"].toString(),
                                    child: new Text(
                                      map["name4"],
                                    ),
                                  );
                                }).toList(),
                             ),
                         ),
                       ),
                     ],
                   ),
                    
                   
                    new Padding(
                     padding: const EdgeInsets.all(30.0),
                   ),              
                    Center(
                      child: new RaisedButton(
                        child: new Text("Agregar"),
                        color: Colors.green,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {
                        

                          if (_formKey.currentState.validate()) {
                            addData();
                           Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LoginPage(),
        ),
        (route) => false,
          );
                          }
                        },
                      ),
                    ),
      
                    
                   
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
    // ignore: dead_code
    
  }

  

  




}