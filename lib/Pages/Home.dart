



import 'package:app_requisicion/Menus/MenuFormularios.dart';

import 'package:app_requisicion/Menus/MenuListaDatos.dart';
import 'package:app_requisicion/Pages/ListaExcel.dart';


import 'package:app_requisicion/Pages/ListaPDF.dart';


import 'package:app_requisicion/SearchUser/ListarUser.dart';




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class Home extends StatefulWidget {
  
  
  
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

   
  
  
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;
   
    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          child: Column(
            children: [
              SizedBox(height: 100),
              const Text('RO CAL PEN', style: TextStyle(fontWeight: FontWeight.bold)),
              
              
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.white,
                child: TextButton(
                  onPressed: 
                (){
                  Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
                },
                 child: Text('Cerrar Sesión', style: TextStyle(color: Colors.black,))),
                
                
              )
            ],
          )
        )
        

      ),
      appBar: new AppBar(
        backgroundColor:  Colors.green,
      ),
       
      body: Stack(
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              height: size.height * .50,
              decoration: BoxDecoration(
                
                color:Colors.green, 
                    
              ),
              
              child: Image.asset(
                'assets/image/Home.png',
                height: 950,
                width: 1000
              
              ),
            ),
            
            SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 15,
                                height: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Center(
                                      child: Text(
                                        'Menú Administrativo  ',
                                        style: TextStyle(
                                            fontFamily: "Montserrat Medium",
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: "Montserrat Regular"),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 100,),
                        Expanded(
                        
                          child: GridView.count(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            primary: false,
                            crossAxisCount: 2,
                            children: <Widget>[
                             
                              GestureDetector(
                               
                               onTap:()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaFormularios()),
                                  ),  
                           child: Card(
                                  
                                  shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  elevation: 4,
                                  child: Column(
                                    
                                    
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset('assets/image/lista-de-verificacion.png',
                                      width: 50,
                                      height: 50,
                                      ),
                                      SizedBox(height: 5,),
                                      
                                      Center(
                                        child: Text(
                                        
                                          'Lista de Formularios',
                                          
                                          style: cardTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              
                    
                            GestureDetector(
                              onTap:()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaDatos()),
                                  ), 
                                                        child: Card(
                                  
                                  shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  elevation: 4,
                                  child: Column(
                                    
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset('assets/image/formulario-de-registro.png',
                                      width: 50,
                                      height: 50,
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        
                                        'Formularios',
                                        style: cardTextStyle,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                    
                              GestureDetector(
                                onTap:()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaReportesPDF()),
                                  ),
                                                        child: Card(
                                 
                                  shape:RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.circular(8),
                                      
                                  ),
                                  elevation: 4,
                                  child: Column(
                                    
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                       Image.asset('assets/image/pdf.png',
                                      width: 50,
                                      height: 50,
                                      ),
                                      SizedBox(height: 5,),
                                       
                                      Center(
                                        child: Text(
                                          
                                          'Reporte de requisiciones',textAlign: TextAlign.center,
                                          style: cardTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                
                                ),
                              ),
                    
                              
                    
                              GestureDetector(
                                onTap:()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaReportesExcel()),
                                  ),
                                                        child: Card(
                                  shape:RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  elevation: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset('assets/image/excel.png',
                                      width: 50,
                                      height: 50,
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Reportes en Excel',
                                        style: cardTextStyle,
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              GestureDetector(
                                onTap:()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListarUser()),
                                  ),
                                child: Card(
                                   
                                    shape:RoundedRectangleBorder(
                                      
                                        borderRadius: BorderRadius.circular(8),
                                        
                                    ),
                                    elevation: 4,
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                         Image.asset('assets/image/usuarios.png',
                                        width: 50,
                                        height: 50,
                                        ),
                                        SizedBox(height: 5,),
                                         
                                        Center(
                                          child: Text(
                                            
                                            'Lista de usuarios',textAlign: TextAlign.center,
                                            style: cardTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  
                                  ),
                              ),
                              
                            
                    
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
             
            
          ],
        ),
      );
    
  }
}
