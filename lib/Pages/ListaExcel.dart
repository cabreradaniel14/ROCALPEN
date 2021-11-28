import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class ListaReportesExcel extends StatefulWidget {
  const ListaReportesExcel({ Key key }) : super(key: key);

  @override
  _ListaReportesExcelState createState() => _ListaReportesExcelState();
}

class _ListaReportesExcelState extends State<ListaReportesExcel> {
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
          
              
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
              
                    Image(image: AssetImage('assets/image/excel.png'), width: 90,),
                    Expanded(child: Text('Tabla Ropa de Oficina Hombres')),
                    IconButton(onPressed:() async {
  const url = 'http://10.17.1.99:8080//ropa/excelHombOfic.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'could not launch $url';
  }
          },icon: Icon(Icons.download),color: Colors.green,)
              
              
                
                          ]
                        ),
              

          SizedBox(height: 15),

           Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/excel.png'), width: 90,),
                    Expanded(child: Text('Tabla Ropa de Oficina Dama',)),
                    IconButton(onPressed:() async {
  const url = 'http://10.17.1.99:8080//ropa/excelDamaOfic.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'could not launch $url';
  }
          },icon: Icon(Icons.download),color: Colors.green,)
          
                
              ]
            ),
          
          SizedBox(height: 15),
           Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/excel.png'), width: 90,),
                    Expanded(child: Text('Tabla Ropa de Campo Hombre')),
                    IconButton(onPressed:() async {
  const url = 'http://10.17.1.99:8080//ropa/excelHombCampo.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'could not launch $url';
  }
          },icon: Icon(Icons.download),color: Colors.green,)
          
          
                
              ]
            ),
          
          SizedBox(height: 15),
           Row(
                  children: <Widget>[
          
                    Image(image: AssetImage('assets/image/excel.png'), width: 90,),
                    Expanded(child: Text('Tabla Ropa de Campo Dama')),
                    IconButton(onPressed:() async {
  const url = 'http://10.17.1.99:8080//ropa/excelDamaCampo.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'could not launch $url';
  }
          },icon: Icon(Icons.download),color: Colors.green,)
          
                
              ]
            ),
          

        ]


      )
        
      );
      
    
  }
}