



// ignore_for_file: deprecated_member_use



import 'package:app_requisicion/Pages/Home.dart';

import 'package:app_requisicion/SearchUser/ListarUser.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;





class EditUser extends StatefulWidget {
  final Student student;

  EditUser({this.student});

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  // This is  for form validations
  final formKey = GlobalKey<FormState>();
  

  // This is for text onChange
  TextEditingController rpeController;
  TextEditingController nombreController;
  TextEditingController apellidoController; 
  TextEditingController zonaController;
  TextEditingController usuarioController;
  TextEditingController trabajadorController; 
  






  // Http post request
  Future editStudent() async {
    var url = "http://10.17.1.99:8080/ropa/EditUser.php";
    return await http.post(Uri.parse(url),
      body: {
        "id": widget.student.id.toString(),
        "rpe": rpeController.text,
        "nombre": nombreController.text,
        "apellido": apellidoController.text,
        "zona": zonaController.text,
        "usuario": _mySelection.toString(),
        "trabajador" : _mySelection1.toString(),
       
      },
    );
  }

String _mySelection; 

List<Map> _myJson = [{"id":0,"name":"user"},{"id":1, "name":"admin"}];

String _mySelection1; 

List<Map> _myJson1 = [{"id":0,"name2":"Sindicalizado"},{"id":1, "name2":"Confianza"}];

  void _onConfirm(context) async {
    await editStudent();
  }

  @override
  void initState() {
    rpeController = TextEditingController(text: widget.student.rpe);
    nombreController = TextEditingController(text: widget.student.nombre);
    zonaController = TextEditingController(text: widget.student.zona);
    usuarioController = TextEditingController(text: widget.student.usuario);
    trabajadorController = TextEditingController(text: widget.student.trabajador);
   

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
                    leading: const Icon(Icons.vpn_key,color: Colors.black),
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
                    leading: const Icon(Icons.person,color: Colors.black),
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
                      controller: zonaController,
                          // ignore: missing_return
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa una Zona";
                          },
                      decoration: new InputDecoration(
                        hintText: "Zona", labelText: "Zona",
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
                              hint: new Text(widget.student.usuario),
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
                 ),

                Row(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.person)
                     ),
                     VerticalDivider(width: 40.0,),
                     Expanded(
                                            child: new Container(                   
                         //margin: EdgeInsets.only(right: 80.0),
                         height: 50.0,
                         width: 100.0,
                        
                          child: new DropdownButton<String>(
                                isDense: true,
                                hint: new Text(widget.student.trabajador),
                              iconSize: 40.0,
                                
                                
                                elevation: 10,
                                value: _mySelection,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _mySelection1 = newValue;
                                    
                                  });
                                  print (_mySelection1);
                                },
                                items: _myJson1.map((Map map) {
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
        builder: (BuildContext context) => Home(),
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
}

