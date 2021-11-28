
import 'dart:convert';

import 'package:app_requisicion/Pages/FormularioH.dart';
import 'package:app_requisicion/Pages/Home.dart';
import 'package:app_requisicion/Pages/Home2.dart';
import 'package:app_requisicion/Pages/Registro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:async';




void main() => runApp(MyApp());


String rpe;
class MyApp extends StatelessWidget {
  const MyApp({ key }) : super(key: key);

 
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/FormularioH': (BuildContext context) => new FormHomOfic(),
        '/Home2': (BuildContext context) => new HomeUser(),
      },
      title: 'Requisiciones de Ropa',
      
      
    );
  }
}


class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 var  controllerUser = TextEditingController();
  String mensaje = '';
  Future<void> login() async {
    final response = await http.post(Uri.parse('http://192.168.100.6//ropa/login.php'), body: {
      "rpe": controllerUser.text,
      
    });
  

  var datauser = json.decode(response.body);

 if (datauser.length == 0) {
    setState(() {
      mensaje="Usuario o contraseña incorrecto";
    });
  } else {
    
    if (datauser[0]['usuario']=='admin') {
      Navigator.pushReplacementNamed(context, '/Home',
      
      );
    } else if (datauser[0]['usuario']=='user') {
      Navigator.pushReplacementNamed(context, '/Home2');
    } 
    
    
    


   
  
    

   
    setState(() {
     rpe= datauser[0]['rpe']; 
      });
  }
    return datauser;
  }
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      
      child:Scaffold(
         
        body: SingleChildScrollView(
          child: Column(
           
            children:[
              SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                      child: Image.asset('assets/image/LOGO SUBGERENCIA.png'),
                      height: 150,
                      width: 250
                      
                    ), 


                  ),
                  
                ],
                
               
              ),

              Image.asset('assets/image/Login.png'),

            SizedBox(height: 10,),
           
              Center(child: Text('Bienvenido',
             style: TextStyle(
               fontSize: 20),),), 
               SizedBox(
             height: 10,
             
             ),
             Center(child: Text('ROCALPEN', 
             style: TextStyle(
               
               fontSize: 35, 
               fontWeight: FontWeight.bold),)),
                        
          
          SizedBox(
            height: 20,
            ),
            Card(elevation: 4,
              child: Container(
        
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2)
                ),
                width: MediaQuery.of(context).size.width*0.9,
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    textAlign: TextAlign.center,
                    textCapitalization: TextCapitalization.characters,
                    controller: controllerUser,
                    decoration: InputDecoration(
                      
                      border: InputBorder.none,
                      
                      hintText: 'RPE', ) ,
                    
                  ),
                ),
              ),
            ),
        
            SizedBox(
              height:30,
            ),
        
            Container(width: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
              child: TextButton(
                onPressed: () async{
                  
                  login();
                }, child: Text('Iniciar', style: TextStyle(fontSize: 20, color: Colors.white),)),
            ),
        
            TextButton(
              onPressed:() async{

                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddData()),
            );
              },
               child: Text('Registrate aquí',style: TextStyle(fontSize:20, color: Colors.black))),
        
          ],
          
           
          ),
        )
      
    ));
  }
}


 

/*class LoginForm extends StatelessWidget {

  const LoginForm({ Key key }) : super(key: key);

  
  



  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      
      child:Scaffold(
         
        body: SingleChildScrollView(
          child: Column(
           
            children:[
            
           SizedBox(
             height: 100,
             
             ),
             Center(child: Text('Bienvenido',
             style: TextStyle(
               fontSize: 20),),),
             Center(child: Text('Login', 
             style: TextStyle(
               fontSize: 35, 
               fontWeight: FontWeight.bold),)),
          
          SizedBox(
            height: 50,
            ),
            Card(elevation: 4,
              child: Container(
        
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2)
                ),
                width: MediaQuery.of(context).size.width*0.9,
                child: TextField(
                  controller: controllerUser,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'RPE') ,
                  
                ),
              ),
            ),
        
            SizedBox(
              height:30,
            ),
        
            Container(width: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
              child: TextButton(
                onPressed: (){
                  logiin();
                }, child: Text('Iniciar', style: TextStyle(fontSize: 20, color: Colors.white),)),
            ),
        
            TextButton(
              onPressed:(){
                print('object');
              },
               child: Text('Registrate aquí',style: TextStyle(fontSize:20, color: Colors.black))),
        
          ],
          
          
          ),
        )
      
    ));
  }
Future<void> logiin() async{
  await http.post(Uri.parse('http://192.168.100.6//ropa/login.php'),body: ({}));

}
  
}*/
