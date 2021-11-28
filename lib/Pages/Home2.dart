import 'package:app_requisicion/Pages/FormularioH.dart';
import 'package:app_requisicion/Formularios/FormularioM.dart';
import 'package:app_requisicion/Formularios/FormularioTrabDama.dart';
import 'package:app_requisicion/Formularios/FormularioTrabHom.dart';
import 'package:app_requisicion/Pages/HomeEdit.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeUser extends StatefulWidget {
  @override
  _HomeUserState createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
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
                 child: Text('Cerrar Sesión',style: TextStyle(color: Colors.black),)),
                
                
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
            
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Container(
                  width: 60,
                ),
                  Image.asset(
              'assets/image/liniera.png',
             height: 160,
            ),

            Container(
              width: 50,
            ),
              Image.asset(
              'assets/image/OficeMan.png',
             
            ),







              ],
            )
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
                          height: 5,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Menú de Usuario  ',
                                style: TextStyle(
                                    fontFamily: "Montserrat Medium",
                                    color: Colors.white,
                                    fontSize: 20),
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
              MaterialPageRoute(builder: (context) => FormHomOfic()),
            ),  
                     child: Card(
                            
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              
                              
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/image/mancfe.png',
                                width: 70,
                                height: 70,
                                ),
                                SizedBox(height: 5,),
                                
                                Center(
                                  child: Text(
                                  
                                    'Prestación de Ropa de Oficina Caballero',
                                    
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
              MaterialPageRoute(builder: (context) => FormularioM()),
            ), 
                                                  child: Card(
                            
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/image/womancfe2.png',
                                width: 70,
                                height: 70,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  
                                  'Prestación de Ropa de Oficina Dama',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormularioTrabajadorHom()),
            ),
                                                  child: Card(
                           
                            shape:RoundedRectangleBorder(
                              
                                borderRadius: BorderRadius.circular(8),
                                
                            ),
                            elevation: 4,
                            child: Column(
                              
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                 Image.asset('assets/image/liniero.png',
                                width: 70,
                                height: 70,
                                ),
                                SizedBox(height: 5,),
                                 
                                Center(
                                  child: Text(
                                    
                                    'Prestación de Ropa de Campo Caballero',textAlign: TextAlign.center,
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
              MaterialPageRoute(builder: (context) => FormularioTrabajoDama()),
            ), 
                                                  child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/image/liniera.png',
                                width: 70,
                                height: 70,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Prestación de Ropa de Trabajo Dama',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeEdit()),
            ), 
                                                  child: Card(
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/image/lapiz.png',
                                width: 70,
                                height: 70,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Edita tu Formulario',
                                  style: cardTextStyle,
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
