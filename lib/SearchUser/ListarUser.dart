// ignore_for_file: non_constant_identifier_names

import 'dart:convert';


import 'package:app_requisicion/SearchUser/DetailsUser.dart';

import 'package:app_requisicion/SearchUser/SearchUser.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListarUser extends StatefulWidget {
  const ListarUser({ Key key }) : super(key: key);

  ListarUser.builder({itemCount, Card Function(BuildContext context, int index) itemBuilder});

  @override
  _ListarUserState createState() => _ListarUserState();
}

class _ListarUserState extends State<ListarUser> {
  
  Future<List<Student>> students;
  final studentListKey = GlobalKey<_ListarUserState>();

  
  @override
  void initState() {
    super.initState();
    students = getStudentList();
  }
  Future<List<Student>> getStudentList({String query}) async {
    final response = await http.get(Uri.parse("${Env.URL_PREFIX}/list.php"));
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Student> students = items.map<Student>((json) {
      return Student.fromJson(json);
    }).toList();
    if(query != null ){
      students = students.where((element) => element.nombre.toLowerCase().contains((query.toLowerCase()))).toList();
    }

    return students;
    
    
  }
  
   @override
  
  Widget build(BuildContext context) {
    
   return Scaffold(
      key: studentListKey,
      appBar: AppBar(
        title: Text('Registros'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(icon: Icon(Icons.search),
          onPressed: (){
            showSearch(context: context, delegate: SearchUsuario());
          },
          
          )
        ],
      ),
      body: Center(
        child: FutureBuilder<List<Student>>(
          future: getStudentList(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // By default, show a loading spinner.
            if (!snapshot.hasData) return CircularProgressIndicator();
            // Render student lists
            return new ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                var data = snapshot.data[index];
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.view_list),
                    title: Text(
                      data.nombre,
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsUser(student: data)),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
      
    );
  }
}

class Student {
  final String id;
  final String rpe;
  final String nombre;
  final String apellido;
  final String usuario; 
  final String zona;
  final String trabajador;
  
  

  Student({this.id, this.rpe, this.nombre,this.apellido,this.usuario, this.zona,this.trabajador});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      rpe: json['rpe'],
      nombre: json['nombre'],
      apellido: json['apellido'],
      usuario: json['usuario'],
      zona: json['zona'],
      trabajador: json['trabajador'],
     
    );
  }

  Map<String, dynamic> toJson() => {
    'rpe': rpe,
    'nombre': nombre,
    'apellido': apellido,
    'usuario' : usuario,
    'zona': zona,
    'trabajador': trabajador,
   
  };
}

class Env {
  static String URL_PREFIX = "http://10.17.1.99:8080//ropa/GetDataUser.php";
}

