import 'dart:convert';



import 'package:app_requisicion/SearchDamaOfic/EditUserDamaOfic.dart';
import 'package:app_requisicion/SearchDamaOfic/SearchUserDamaOfic.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListarUserDamaOfic extends StatefulWidget {
  const ListarUserDamaOfic({ Key key }) : super(key: key);

  ListarUserDamaOfic.builder({itemCount, Card Function(BuildContext context, int index) itemBuilder});

  @override
  _ListarUserDamaOficState createState() => _ListarUserDamaOficState();
}

class _ListarUserDamaOficState extends State<ListarUserDamaOfic> {
  
  Future<List<Student>> students;
  final studentListKey = GlobalKey<_ListarUserDamaOficState>();

  
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
            showSearch(context: context, delegate: SearUserDamaOfic2());
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
                        MaterialPageRoute(builder: (context) => EditUserDamaOfic(student: data)),
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
  final String zona;
  final String departamento;
  final String categoria;
  final String blusa;
  final String cadera;
  final String cintura; 
  final String falda; 
  final String pantalon; 
  final String calzado;
  final String largo;
  
  final String observ;

  Student({this.id, this.rpe, this.nombre, this.zona,this.departamento, this.categoria, this.blusa,this.cadera, this.cintura, this.falda, this.pantalon,this.largo,this.calzado,this.observ});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      rpe: json['rpe'],
      nombre: json['nombre'],
      zona: json['zona'],
      departamento: json['departamento'],
      categoria: json['categoria'],
      blusa: json['blusa'],
      cadera: json['cadera'],
      cintura: json['cintura'],
      falda: json['falda'],
      pantalon: json['pantalon'],
      largo: json['largo'],
      calzado: json['calzado'],
      observ: json['observ'],
    );
  }

  Map<String, dynamic> toJson() => {
    'rpe': rpe,
    'nombre': nombre,
    'zona': zona,
    'departamento': departamento,
    'categoria': categoria,
    'blusa': blusa,
    'cadera': cadera,
    'cintura': cintura,
    'falda': falda,
    'pantalon': pantalon,
    'largo': largo,
    'calzado': calzado,
    'observ': observ,
  };
}

class Env {
  static String URL_PREFIX = "http://10.17.1.99:8080//ropa/GetDataDamaOfic.php";
}

