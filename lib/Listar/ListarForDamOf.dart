import 'package:app_requisicion/Delate/DelateFormDamaOfic.dart';
import 'package:app_requisicion/Edit/EditFormDamaOfic.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class ListarFormDamaOfic extends StatefulWidget {
  @override
  _ListarFormDamaOficState createState() => _ListarFormDamaOficState();
}

class _ListarFormDamaOficState extends State<ListarFormDamaOfic> {
  Future<List> getData() async{
final response = await http.get(Uri.parse('http://10.17.1.99:8080//ropa/GetDataDamaOfic.php'));
return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Text("Petición de ropa de Oficina Damas")

        
      ),
      
       
       
      
      

      
      body: new FutureBuilder<List>(
        
        future: getData(),
        builder: (context, snapshot){
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
          ? new ItemList(
            list: snapshot.data,
          )
          
          : new Center(
            child: new CircularProgressIndicator(),
            
            
            
          );


        }
      ),
      
    );
  }
  
}


class ItemList extends StatelessWidget {
  final List list; 
  ItemList({this.list}); 
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        
        return new Column(
          
         children: <Widget>[
           Divider(
             height: 1.0,
           ),
           Container(
             padding: new EdgeInsets.all(3.0),
            child: new Card( 
              child: Row(
                children: <Widget>[
                  new Container(

                    child: Image.asset('assets/image/contador.png',
                     fit: BoxFit.fill,
                     height: 57.0,
                    width: 57.0,
                    ),
                  ),

                  Expanded( 
                  child: new ListTile(
                title: new Text(
                  list[i]['nombre'],
                  style: TextStyle(fontSize: 25.0, color: Colors.black),
                ),
                
                subtitle: new Text(
                  "Departamento: ${list[i]['departamento']}",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),


                ),
                
              ),
              
                  ),
              IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>DetailDamaOfic(
                       list: list,
                       index: i,
                    )),
                   
                   );
                  },
                ),

              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>EditFormDamaOficina(
                      list: list,
                      index: i,
                    )),
                   
                   );
                },
              )



                ],
              ),
              color: Colors.white,
              
            ),
            
          ),
         
         ]
        );
        
        
      }
    ); 
      
    
  }
  
}