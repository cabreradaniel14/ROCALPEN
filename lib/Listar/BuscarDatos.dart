import 'dart:convert';

import 'package:app_requisicion/Edit/EditFormDamaOfic2.dart';
import 'package:app_requisicion/Edit/EditFormHomOfic2.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ListarDatos extends StatefulWidget {
  ListarDatos({Key key}) : super(key: key);

  @override
  _ListarDatosState createState() => _ListarDatosState();
}
class Note{
  String title;
  String text; 

  Note(this.title, this.text);

  Note.fromJson(Map<dynamic, dynamic> json) {
    title = json['nombre'];
    text = json['zona'];
  }
}

class _ListarDatosState extends State<ListarDatos> {

  List<Note> notas = <Note>[];

  
  Future <List<Note>>fetchNotes() async{
    var url = 'http://192.168.100.6//ropa/GetData.php';
   var response = await http.get(Uri.parse(url));

    var notes = <Note>[];


    if (response.statusCode == 200){
      var notesJson = json.decode (response.body); 
      for(var notesJson in notesJson){
        notes.add(Note.fromJson(notesJson));
      }
    }
    return notes;
  }
  @override
  void initState() {
    fetchNotes().then((value){
      notas.addAll(value);

    });
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Edita tu prestación'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i ){
          return i == 0 ? _searchBar() :  _listemItem(i-1);

        },
        itemCount: notas.length+1,
        
        
        
        
        ),
    );
  }
_searchBar(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Escribe tu nombre'
      ),
      onChanged: (text){
        text = text.toLowerCase();
        setState(() {
          notas = notas.where((note) {
            var noteTitle = note.title.toLowerCase();
            return noteTitle.contains(text);
          } ).toList();
        });
      }
    ),
    );

}

 
 _listemItem(index){
   return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    <Widget>[
                      Text(
                        notas[index].title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        notas[index].text,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]
                  ),
                  Expanded(
                    child: IconButton(
                                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                                  ),
                                  onPressed: (){
                    var i;
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>EditFormHombreOficina2(
                         notas:notas,
                         index: i,
                      )),
                     
                     );
                                  },
                                ),
                  )
                ],
              ),

            ),
          );



 }

 




}