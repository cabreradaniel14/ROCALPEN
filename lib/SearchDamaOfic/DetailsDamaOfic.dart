

import 'package:app_requisicion/Pages/Home.dart';
import 'package:app_requisicion/SearchDamaOfic/EditDamaOfic.dart';
import 'package:app_requisicion/SearchDamaOfic/ListarDamaOfic.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailsDamaOfic extends StatefulWidget {
  final Student student;

  DetailsDamaOfic({this.student});

  @override
  _DetailsDamaOficState createState() => _DetailsDamaOficState();
}
var url="http://10.17.1.99:8080/ropa/DelateFormDamaOfic.php";
class _DetailsDamaOficState extends State<DetailsDamaOfic> {
  void deleteStudent(context) async {
    await http.post(Uri.parse(url),
      
         body: {
        'id': widget.student.id.toString(),
      },);
    
   Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Home(),
                                  ),
                                  (route) => false,
                                    );
  }

  void confirmDelete(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('¿Seguro de eliminar éste registro?'),
          actions: <Widget>[
            RaisedButton(
              child: Icon(Icons.cancel),
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
            RaisedButton(
              child: Icon(Icons.check_circle),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () => deleteStudent(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => confirmDelete(context),
          ),
        ],
      ),
      body: Container(
        height: 270.0,
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Nombre : ${widget.student.nombre}",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text(
              "Zona : ${widget.student.zona}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.edit),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => EditDamaOfic(student: widget.student),
          ),
        ),
      ),
    );
  }
}