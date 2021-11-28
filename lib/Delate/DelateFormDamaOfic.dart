import 'package:app_requisicion/Pages/Home.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class DetailDamaOfic extends StatefulWidget {
  List list;
  int index;
  DetailDamaOfic({this.index, this.list});
  @override
  _DetailDamaOficState createState() => new _DetailDamaOficState();
}

class _DetailDamaOficState extends State<DetailDamaOfic> {
  void deleteData() {
    var url = "http://10.17.1.99:8080/ropa/DelateFormDamaOfic.php";
    http.post(Uri.parse(url), body: {'id': widget.list[widget.index]['id']});
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Esta seguro de eliminar '${widget.list[widget.index]['nombre']}'"),
      actions: <Widget>[
        new ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,

          ),
          child: new Text(
            "¡Eliminado!",
            style: new TextStyle(color: Colors.black),
          ),
           
          onPressed: () {
            deleteData();
            Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => Home(),
      ),
      (route) => false,
    );
          },
        ),
        new RaisedButton(
          child:
              new Text("CANCELAR", style: new TextStyle(color: Colors.black)),
          color: Colors.green,
          onPressed: () => Navigator.of (context).pop(),
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['nombre']}")),
      body: new Container(
        height: 270.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text(widget.list[widget.index]['nombre'], style: new TextStyle(fontSize: 20.0),),
                Divider(),
                new Text("Departamento : ${widget.list[widget.index]['departamento']}", style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),


               
                    new RaisedButton(
                      child: new Text("ELIMINAR"),
                      color: Colors.redAccent,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () => confirm(),
                    ),
                  ],
                )
              
            ),
          ),
        ),
      );
    
  }
}
