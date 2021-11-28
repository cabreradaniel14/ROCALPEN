import 'dart:convert';


import 'package:app_requisicion/Listar/EditUser.dart';
import 'package:app_requisicion/Listar/SearchUserData.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListViewData2 extends StatefulWidget {
  const ListViewData2({ Key key }) : super(key: key);

  ListViewData2.builder({itemCount, Card Function(BuildContext context, int index) itemBuilder});

  @override
  _ListViewData2State createState() => _ListViewData2State();
}

class _ListViewData2State extends State<ListViewData2> {
  
  Future<List<Student>> students;
  final studentListKey = GlobalKey<_ListViewData2State>();

  
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
            showSearch(context: context, delegate: SearUser2());
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
                        MaterialPageRoute(builder: (context) => EditUserHomOfic(student: data)),
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
  final String camisa;
  final String pantalon; 
  final String largo; 
  final String zapato; 
  final String observ;
  final String monedero;

  Student({this.id, this.rpe, this.nombre, this.zona,this.departamento, this.categoria, this.camisa,this.pantalon,this.largo,this.zapato,this.observ, this.monedero});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      rpe: json['rpe'],
      nombre: json['nombre'],
      zona: json['zona'],
      categoria: json['categoria'],
      camisa: json['camisa'],
      pantalon: json['pantalon'],
      largo: json['largo'],
      zapato: json['zapato'],
      observ: json['observ'],
      monedero: json['monedero'],
    );
  }

  Map<String, dynamic> toJson() => {
    'rpe': rpe,
    'nombre': nombre,
    'zona': zona,
    'categoria': categoria,
    'camisa': camisa,
    'pantalon': pantalon,
    'largo': largo,
    'zapato': zapato,
    'observ': observ,
    'monedero': monedero,
  };
}

class Env {
  static String URL_PREFIX = "http://10.17.1.99:8080//ropa/GetData.php";
}

