
import 'package:app_requisicion/Listar/Listtar.dart';
import 'package:app_requisicion/Search/Listar.dart';
import 'package:app_requisicion/SearchDamaOfic/ListarDamaOfic.dart';
import 'package:app_requisicion/SearchDamaTrabajo/ListarDama.dart';
import 'package:flutter/material.dart';

class ListaDatos extends StatefulWidget {
  const ListaDatos({ Key key }) : super(key: key);

  @override
  _ListaDatosState createState() => _ListaDatosState();
}

class _ListaDatosState extends State<ListaDatos> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));


    return Scaffold(
      body: ListView(
        
        children: <Widget>[
          SizedBox(height: 30,),
           SizedBox(height: 50,
           child: Text('Menú de Formularios',textAlign: TextAlign.center, style: 
            TextStyle(
          fontFamily: "Montserrat Medium",
           color: Colors.black,
            fontSize: 20),
          
          ),
           ),
          
              GestureDetector(
                onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListViewData()),
            ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
              
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Listado de Requisiciones Ropa de Oficina Hombres')),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListViewData()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
              
              
                
                          ]
                        ),
              ),

          SizedBox(height: 15),

          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListarDamaOfic()),
            ),
            child: Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Listado de Requisiciones Ropa de Oficina Dama',)),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListarDamaOfic()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
          
          
                
              ]
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListarTrabajador()),
            ),
            child: Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Formularios Ropa de Campo Hombre')),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListarTrabajador()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
          
          
                
              ]
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListarDamaTrabajador()),
            ),
            child: Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Formularios Ropa de Campo Dama')),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListarDamaTrabajador()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
          
          
                
              ]
            ),
          )

        ]


      )
        
      );
      
    
  }
}