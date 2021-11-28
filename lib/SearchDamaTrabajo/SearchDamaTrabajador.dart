
import 'dart:convert';

import 'package:app_requisicion/SearchDamaTrabajo/DetailsDama.dart';
import 'package:app_requisicion/SearchDamaTrabajo/ListarDama.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SearUserTrabajadora extends SearchDelegate<String>{
 
  
  @override
  List<Widget> buildActions(BuildContext context) {
     
  
    return [
      IconButton( icon: Icon(Icons.close),
      onPressed: (){
        query = "";
        
      },
      )
      
    ];
    
    
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton( icon: Icon(Icons.arrow_back_ios),
    onPressed: (){
        Navigator.pop(context);
    },
    
    );
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
  
  Widget buildResults(BuildContext context) {
   return Center(
        child: FutureBuilder<List<Student>>(
          future: getStudentList(query: query),
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
                        MaterialPageRoute(builder: (context) => DetailsDamaTrabajador(student: data)),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      );
      
  }

  @override
  Widget buildSuggestions(BuildContext context) {
     return(
          Center(
            child: Text('Escribe tu nombre completo')
          )
     );

    
    
      }

      

    
}