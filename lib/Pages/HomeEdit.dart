
import 'package:app_requisicion/Listar/SearchUserData.dart';

import 'package:app_requisicion/Search/SearchUserTrab.dart';

import 'package:app_requisicion/SearchDamaOfic/SearchUserDamaOfic.dart';

import 'package:app_requisicion/SearchDamaTrabajo/SearchUserDamaTrab.dart';
import 'package:flutter/material.dart';



class HomeEdit extends StatefulWidget {
  @override
  _HomeEditState createState() => _HomeEditState();
}

class _HomeEditState extends State<HomeEdit> {
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
                                'Edita tu Formulario',
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
                       
                         Card(
                            
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
                                  child: TextButton(
                                  onPressed: ()
                                  {showSearch(context: context, delegate: SearUser2());},
                                   child: 
                                   Text('Editar Ropa de Oficina Caballero')
                                   )
                                )
                              ],
                            ),
                          ),
                       
                        

                      Card(
                            
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
                                Center(
                                  child: TextButton(onPressed: (){showSearch(context: context, delegate: SearUserDamaOfic2());}, child: Text('Editar Ropa de Oficina Dama')),

                                )
                              ],
                            ),
                          ),
                        

                       
            
                                                 Card(
                           
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
                                  child: TextButton(onPressed: (){showSearch(context: context, delegate: SearUserTrabajador2());}, child: Text('Editar Ropa de Trabajo Caballero'))
                                )
                              ],
                            ),
                          
                          ),
                        

                        

                        Card(
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
                                Center(
                                  child: TextButton(onPressed: (){showSearch(context: context, delegate: SearUserTrabajadora2());}, child: Text('Editar Ropa de Trabajo Dama'))
                                )
                              ],
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
