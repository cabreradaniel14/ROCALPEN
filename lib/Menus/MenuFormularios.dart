

import 'package:app_requisicion/Formularios/FormularioM.dart';
import 'package:app_requisicion/Formularios/FormularioTrabDama.dart';
import 'package:app_requisicion/Formularios/FormularioTrabHom.dart';
import 'package:app_requisicion/Pages/FormularioH.dart';

import 'package:flutter/material.dart';

class ListaFormularios extends StatefulWidget {
  const ListaFormularios({ Key key }) : super(key: key);

  @override
  _ListaFormulariosState createState() => _ListaFormulariosState();
}

class _ListaFormulariosState extends State<ListaFormularios> {
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
              MaterialPageRoute(builder: (context) => FormHomOfic()),
            ), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
              
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Formulario Ropa de Oficina Hombres')),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FormHomOfic()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
              
              
                
                          ]
                        ),
              ),

          SizedBox(height: 15),

          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormularioM()),
            ),
            child: Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Formulario Ropa de Oficina Dama',)),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FormularioM()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
          
          
                
              ]
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormularioTrabajadorHom()),
            ),
            child: Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Formulario Ropa de Campo Hombre')),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FormularioTrabajadorHom()),
                     
                     );
                    }, icon: Icon(Icons.remove_red_eye),color: Colors.green,)
          
          
                
              ]
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormularioTrabajoDama()),
            ),
            child: Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/lista-de-verificacion.png'), width: 90,),
                    Expanded(child: Text('Formulario Ropa de Campo Dama')),
                    IconButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FormularioTrabajoDama()),
                     
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